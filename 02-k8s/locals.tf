locals {
  project    = "joinrpg"
  account_id = "708726"                           # Номер аккаунта Selectel
  project_id = "79f07973487d40ccb5da3d907883fa41" # ID проекта JoinRpgCloud
  region     = "ru-6"                             # Пул
  auth_url   = "https://cloud.api.selcloud.ru/identity/v3/"

  network_name = "joinrpg-network"
  subnet_cidr  = "192.168.0.0/24"

  kube_version = "1.35.3"

  node_cpus        = 2
  node_ram_mb      = 8192
  node_volume_gb   = 50
  node_volume_type = "universal2" # SSD Универсальный; полное имя типа — <тип>.<зона>

  maintenance_window_start = "01:00:00" # UTC (04:00 по Москве), окно обслуживания ежедневное
}
