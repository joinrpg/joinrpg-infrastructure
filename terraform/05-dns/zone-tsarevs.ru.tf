# Записи зоны tsarevs.ru. Ключ — <имя>/<тип>.
locals {
  tsarevs_ru = {
    "tsarevs.ru./A" = {
      ttl     = 3600
      records = ["51.250.99.233"]
    }
    "_acme-challenge.honor-avatars.tsarevs.ru./TXT" = {
      ttl     = 600
      records = ["\"m59_ysL0VKpsRyvnFE023mt_DXwYpYBizkmpP_N8D9A\""]
    }
    "_acme-challenge.wheel.tsarevs.ru./CNAME" = {
      ttl     = 600
      records = ["fpqvktuce0opgbi4ic9j.cm.yandexcloud.net."]
    }
    "factorio.tsarevs.ru./A" = {
      ttl     = 600
      records = ["176.109.107.41"]
    }
    "honor-avatars.tsarevs.ru./DNAME" = {
      ttl     = 600
      records = ["honor-avatars.tsarevs.ru.website.yandexcloud.net."]
    }
    "joindb.tsarevs.ru./A" = {
      ttl     = 3600
      comment = "внешний доступ в БД MSSQL (закрыт SG)"
      records = ["136.234.75.157"]
    }
    "larp-dictionary.tsarevs.ru./A" = {
      ttl     = 600
      records = ["51.250.99.233"]
    }
    "psql.tsarevs.ru./A" = {
      ttl     = 600
      records = ["136.234.79.12"]
    }
    "twilight.tsarevs.ru./A" = {
      ttl     = 3600
      records = ["51.250.99.233"]
    }
    "wheel.tsarevs.ru./DNAME" = {
      ttl     = 3600
      records = ["wheel.tsarevs.ru.website.yandexcloud.net."]
    }
  }
}
