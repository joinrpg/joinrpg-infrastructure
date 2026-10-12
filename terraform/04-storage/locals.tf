locals {
  project     = "joinrpg"
  account_id  = "708726"                           # Номер аккаунта Selectel
  project_id  = "79f07973487d40ccb5da3d907883fa41" # ID проекта JoinRpgCloud
  region      = "ru-6"                             # Пул
  auth_url    = "https://cloud.api.selcloud.ru/identity/v3/"
  s3_endpoint = "https://s3.ru-6.storage.selcloud.ru"

  # Бакет joinrpg-tfstate описан в слое 00-tfstate-bucket.
  # Тип бакета (публичный или приватный), класс хранения, индексная страница и привязанные домены
  # через S3 API не настраиваются — они заданы в панели Selectel и здесь не описаны.
  buckets = toset([
    # JoinRPG
    "joinrpg-prod-avatars",
    "joinrpg-dev-avatars",
    "joinrpg-local-dev-avatars",
    "joinrpg-backups",
    "joinrpg-dev-backups",
    "joinrpg-mssql-backups",
    "joinrpg-webstub",
    "joinrpg.ru",
    "docs.joinrpg.ru",
    "docs.dev.joinrpg.ru",

    # КогдаИгра
    "kogda-igra-webstub",

    # Сайты игр и прочая статика
    "ab.bastilia.ru",
    "alisa.bastilia.ru",
    "alpha.bastilia.ru",
    "badgame.bastilia.ru",
    "blackcity.bastilia.ru",
    "bsg.bastilia.ru",
    "coldwar.bastilia.ru",
    "dostoevsky.bastilia.ru",
    "honor.bastilia.ru",
    "ice.bastilia.ru",
    "kievrus.bastilia.ru",
    "krynn.bastilia.ru",
    "lost.bastilia.ru",
    "poselok.bastilia.ru",
    "static.rating.bastilia.ru",
    "wheel.bastilia.ru",
    "honor-avatars.tsarevs.ru",
    "kievrus.tsarevs.ru",
    "wheel.tsarevs.ru",
    "leotsarev.ru",
    "return-avatars.leotsarev.ru",
    "code.rpg.ru",
    "external-images.larp-handbook.ru",
    "magellan2018.ru",
    "steam2016.ru",
    "vedmak2014.ru",
    "gamesites-backup",
  ])
}
