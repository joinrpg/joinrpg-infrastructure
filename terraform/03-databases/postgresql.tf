# Управляемый PostgreSQL: мастер и одна реплика в разных зонах пула
resource "selectel_dbaas_postgresql_datastore_v1" "postgresql" {
  name       = "Kaitlyn"
  project_id = local.project_id
  region     = local.region
  type_id    = data.selectel_dbaas_datastore_type_v1.postgresql.datastore_types[0].id
  subnet_id  = data.openstack_networking_subnet_v2.subnet.id
  node_count = 2

  flavor {
    vcpus     = 2
    ram       = 4096
    disk      = 32
    disk_type = "local"
  }

  # Пулер соединений слушает порт 5433, прямое подключение — 5432
  pooler {
    mode = "transaction"
    size = 30
  }

  # Публичный адрес на мастере
  floating_ips {
    master  = 1
    replica = 0
  }

  backup_retention_days = 7
  logs                  = "s/dbaas/Kaitlyn"

  security_groups = [data.openstack_networking_secgroup_v2.default.id]

  # Кластер создан в панели и импортирован: публичный адрес и пулер при импорте в состояние
  # не попадают, и без этого блока Terraform пытается настроить их заново на работающей БД.
  # Чтобы менять их через код, ignore_changes нужно убрать.
  # prevent_destroy: Terraform откажется выполнять план, в котором кластер удаляется или пересоздаётся.
  lifecycle {
    ignore_changes  = [floating_ips, pooler]
    prevent_destroy = true
  }
}

resource "selectel_dbaas_user_v1" "users" {
  for_each = local.postgresql_users

  project_id   = local.project_id
  region       = local.region
  datastore_id = selectel_dbaas_postgresql_datastore_v1.postgresql.id
  name         = each.key
  password     = var.db_user_passwords[each.key]

  # Пароль используется только при создании пользователя. У существующих пользователей
  # Terraform пароль не меняет: смена делается в панели.
  lifecycle {
    ignore_changes = [password]
  }
}

resource "selectel_dbaas_postgresql_database_v1" "databases" {
  for_each = local.postgresql_databases

  project_id   = local.project_id
  region       = local.region
  datastore_id = selectel_dbaas_postgresql_datastore_v1.postgresql.id
  owner_id     = selectel_dbaas_user_v1.users[each.value].id
  name         = each.key

  # Удаление базы через код запрещено: чтобы удалить базу, блок нужно убрать отдельной правкой
  lifecycle {
    prevent_destroy = true
  }
}
