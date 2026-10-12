# ВМ с MS SQL Server. Сам SQL Server ставится внутри ВМ и здесь не описан.

# Исходящие правила группы — стандартные, их создаёт OpenStack вместе с группой
resource "openstack_networking_secgroup_v2" "mssql" {
  name = "mssql-sg"
}

resource "openstack_networking_secgroup_rule_v2" "mssql_ingress" {
  for_each = local.mssql_ingress_rules

  security_group_id = openstack_networking_secgroup_v2.mssql.id
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = each.value.port
  port_range_max    = each.value.port
  remote_ip_prefix  = each.value.cidr
  description       = each.value.description
}

resource "openstack_networking_port_v2" "mssql" {
  network_id         = data.openstack_networking_network_v2.network.id
  security_group_ids = [openstack_networking_secgroup_v2.mssql.id]

  fixed_ip {
    subnet_id  = data.openstack_networking_subnet_v2.subnet.id
    ip_address = "192.168.0.2"
  }

  # Порт импортирован: адрес и группа безопасности при импорте в состояние не попадают,
  # и без этого блока Terraform отправляет обновление порта работающей ВМ.
  # Чтобы менять группу безопасности порта через код, блок нужно убрать.
  lifecycle {
    ignore_changes = [fixed_ip, security_group_ids]
  }
}

resource "openstack_blockstorage_volume_v3" "mssql_boot" {
  name              = "disk-for-mssql-prod-#1"
  size              = 20
  volume_type       = "universal2.${local.region}a"
  availability_zone = "${local.region}a"
  image_id          = data.openstack_images_image_v2.ubuntu.id

  # Образ нужен только при создании диска. Selectel обновляет образы, и их ID меняется,
  # а смена образа пересоздаёт диск.
  # prevent_destroy: на диске лежат данные MS SQL, Terraform откажется выполнять план с его удалением.
  lifecycle {
    ignore_changes  = [image_id]
    prevent_destroy = true
  }
}

resource "openstack_compute_instance_v2" "mssql" {
  name              = "mssql-prod"
  flavor_name       = "SL2.2-4096-AMD"
  key_pair          = "avs"
  availability_zone = "${local.region}a"

  network {
    port = openstack_networking_port_v2.mssql.id
  }

  block_device {
    uuid                  = openstack_blockstorage_volume_v3.mssql_boot.id
    source_type           = "volume"
    destination_type      = "volume"
    boot_index            = 0
    delete_on_termination = false
  }

  # ВМ создана в панели и импортирована. Загрузочный диск и порт при импорте попадают в состояние
  # не так, как описаны здесь, а в метаданные Selectel пишет служебные значения —
  # без ignore_changes Terraform пересоздаёт ВМ.
  # prevent_destroy: Terraform откажется выполнять план, в котором ВМ удаляется или пересоздаётся.
  lifecycle {
    ignore_changes  = [block_device, network, metadata, image_id, image_name]
    prevent_destroy = true
  }
}

# Публичный адрес для доступа администраторов, домен joindb.tsarevs.ru
resource "openstack_networking_floatingip_v2" "mssql" {
  pool    = "external-network"
  port_id = openstack_networking_port_v2.mssql.id
}
