# Записи зоны code.rpg.ru. Ключ — <имя>/<тип>.
locals {
  code_rpg_ru = {
    "code.rpg.ru./DNAME" = {
      ttl     = 3600
      records = ["code.rpg.ru.website.yandexcloud.net."]
    }
    "_acme-challenge.code.rpg.ru./CNAME" = {
      ttl     = 600
      records = ["fpqk5jir2odl87fcr1kf.cm.yandexcloud.net."]
    }
  }
}
