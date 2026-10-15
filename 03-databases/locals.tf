locals {
  project    = "joinrpg"
  account_id = "708726"                           # Номер аккаунта Selectel
  project_id = "79f07973487d40ccb5da3d907883fa41" # ID проекта JoinRpgCloud
  region     = "ru-6"                             # Пул
  auth_url   = "https://cloud.api.selcloud.ru/identity/v3/"

  network_name = "joinrpg-network"
  subnet_cidr  = "192.168.0.0/24"

  # Пользователи управляемого PostgreSQL. Пароли — в переменной db_user_passwords
  postgresql_users = toset([
    "db_admin",
    "joinrpg_prod",
    "kogda_prod",
    "bastilia_rating",
    "twilightuser",
  ])

  # Базы управляемого PostgreSQL: имя => владелец
  postgresql_databases = {
    "joinrpg_prod_idportal"        = "joinrpg_prod"
    "joinrpg_prod_notifications"   = "joinrpg_prod"
    "joinrpg_prod_data_protection" = "joinrpg_prod"
    "joinrpg_daily_job"            = "joinrpg_prod"
    "kogda_prod"                   = "kogda_prod"
    "BastiliaRating"               = "bastilia_rating"
    "twilight"                     = "twilightuser"
    "test_db"                      = "db_admin"
  }

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
