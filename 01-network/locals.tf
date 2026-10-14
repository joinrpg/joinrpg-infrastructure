locals {
  project    = "joinrpg"
  account_id = "708726"                           # Номер аккаунта Selectel
  project_id = "79f07973487d40ccb5da3d907883fa41" # ID проекта JoinRpgCloud
  region     = "ru-6"                             # Пул
  auth_url   = "https://cloud.api.selcloud.ru/identity/v3/"

  subnet_cidr = "192.168.0.0/24"
  dns_servers = ["188.93.16.19", "188.93.17.19"] # Рекурсивные DNS-серверы Selectel
}
