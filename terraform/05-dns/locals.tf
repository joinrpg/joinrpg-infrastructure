locals {
  account_id = "708726"                           # Номер аккаунта Selectel
  project_id = "79f07973487d40ccb5da3d907883fa41" # ID проекта JoinRpgCloud
  # DNS не привязан к пулу, но провайдер ищет его адрес в каталоге пула, а в ru-6 его нет
  region   = "ru-1"
  auth_url = "https://cloud.api.selcloud.ru/identity/v3/"

  # Зона => её записи. Записи каждой зоны лежат в своём файле zone-<зона>.tf.
  # Записи SOA и NS самой зоны Selectel создаёт сам, здесь их нет.
  zones = {
    "bastilia.ru."      = local.bastilia_ru
    "code.rpg.ru."      = local.code_rpg_ru
    "joinrpg.ru."       = local.joinrpg_ru
    "kogda-igra.ru."    = local.kogda_igra_ru
    "larp-handbook.ru." = local.larp_handbook_ru
    "leotsarev.ru."     = local.leotsarev_ru
    "tsarevs.ru."       = local.tsarevs_ru
  }

  # Все записи одним списком: к каждой добавлено имя её зоны
  records = merge([
    for zone, records in local.zones : {
      for key, record in records : key => merge(record, { zone = zone })
    }
  ]...)
}
