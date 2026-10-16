locals {
  project    = "joinrpg"
  account_id = "708726"                           # Номер аккаунта Selectel
  project_id = "79f07973487d40ccb5da3d907883fa41" # ID проекта JoinRpgCloud
  region     = "ru-6"                             # Пул
  auth_url   = "https://cloud.api.selcloud.ru/identity/v3/"

  network_name = "joinrpg-network"
  subnet_cidr  = "192.168.0.0/24"

  # Пользователи управляемого PostgreSQL: имя => ID. Создаются и меняются в панели,
  # Terraform ими не управляет. ID — в панели на вкладке «Пользователи» кластера, под именем
  postgresql_users = {
    "atsareva"        = "5acf9ef0-1fc5-4872-af21-a73169f206d4"
    "bastilia_rating" = "dea91fab-85ff-415b-a1df-e7b0654bf639"
    "db_admin"        = "2eef8d89-f4a6-4a94-b2ca-1f240e354bac"
    "joinrpg_dev"     = "47123010-d9af-421a-b9ce-374741164cc2"
    "joinrpg_prod"    = "97091c7d-c55c-4615-b02c-fe4b029b68f4"
    "kogda_dev"       = "43f45550-230c-457b-816b-584e1d05220c"
    "kogda_prod"      = "c39d714c-2661-41fc-b9d2-3e369299f449"
    "shiko"           = "e8c238bf-b454-4258-855d-29f4df406df4"
    "twilightuser"    = "f03bfc11-2663-4628-ab4b-54d2e7064347"
  }

  # Базы управляемого PostgreSQL: имя => владелец
  postgresql_databases = {
    "joinrpg_prod_idportal"        = "joinrpg_prod"
    "joinrpg_prod_notifications"   = "joinrpg_prod"
    "joinrpg_prod_data_protection" = "joinrpg_prod"
    "joinrpg_daily_job"            = "joinrpg_prod"
    "joinrpg_dev_idportal"         = "joinrpg_dev"
    "joinrpg_dev_notifications"    = "joinrpg_dev"
    "joinrpg_dev_data_protection"  = "joinrpg_dev"
    "joinrpg_dev_daily_job"        = "joinrpg_dev"
    "kogda_prod"                   = "kogda_prod"
    "kogda_dev"                    = "kogda_dev"
    "BastiliaRating"               = "bastilia_rating"
    "twilight"                     = "twilightuser"
    "test_db"                      = "db_admin"
  }

  # LC_COLLATE и LC_CTYPE всех баз. Задаются только при создании базы: смена значения пересоздаёт базу
  postgresql_locale = "ru_RU.utf8"

  # Входящие правила группы безопасности ВМ MSSQL
  mssql_ingress_rules = {
    "ssh-admin" = {
      port        = 22
      cidr        = "195.138.235.189/32"
      description = "Правило, разрешающее весь входящий TCP-трафик на 22 порт всех устройств в проекте, на которые назначена данная группа безопасности."
    }
    "mssql-admin" = {
      port        = 1433
      cidr        = "195.138.235.189/32"
      description = "mssql порт"
    }
    "mssql-subnet" = {
      port        = 1433
      cidr        = "192.168.0.0/24"
      description = ""
    }
    # SSH через слушатель joindb-ssh (порт 2222) балансировщика кластера: трафик приходит из подсети
    "ssh-subnet" = {
      port        = 22
      cidr        = "192.168.0.0/24"
      description = "SSH через балансировщик кластера"
    }
  }
}
