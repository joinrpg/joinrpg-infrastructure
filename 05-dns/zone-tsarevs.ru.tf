# Записи зоны tsarevs.ru. Ключ — <имя>/<тип>.
locals {
  tsarevs_ru = {
    "tsarevs.ru./A" = {
      ttl     = 3600
      records = ["176.53.231.74"]
    }
    "_acme-challenge.honor-avatars.tsarevs.ru./TXT" = {
      ttl     = 600
      records = ["\"m59_ysL0VKpsRyvnFE023mt_DXwYpYBizkmpP_N8D9A\""]
    }
    "_acme-challenge.wheel.tsarevs.ru./CNAME" = {
      ttl     = 600
      records = ["fpqvktuce0opgbi4ic9j.cm.yandexcloud.net."]
    }
    "dev.id.joinrpg.tsarevs.ru./A" = {
      ttl     = 600
      comment = "IdPortal dev напрямую (DRP)"
      records = ["176.53.231.74"]
    }
    "dev.joinrpg.tsarevs.ru./A" = {
      ttl     = 600
      comment = "Portal dev напрямую (DRP)"
      records = ["176.53.231.74"]
    }
    "factorio.tsarevs.ru./A" = {
      ttl     = 600
      records = ["176.109.107.41"]
    }
    "honor-avatars.tsarevs.ru./DNAME" = {
      ttl     = 600
      records = ["honor-avatars.tsarevs.ru.website.yandexcloud.net."]
    }
    "id.joinrpg.tsarevs.ru./A" = {
      ttl     = 600
      comment = "IdPortal напрямую, без заглушки (DRP)"
      records = ["176.53.231.74"]
    }
    "joinrpg.tsarevs.ru./A" = {
      ttl     = 600
      comment = "Portal напрямую, без заглушки (DRP)"
      records = ["176.53.231.74"]
    }
    "joindb.tsarevs.ru./A" = {
      ttl     = 3600
      comment = "внешний доступ в БД MSSQL (закрыт SG)"
      records = ["136.234.75.157"]
    }
    "kogda-igra.tsarevs.ru./A" = {
      ttl     = 3600
      records = ["176.53.231.74"]
    }
    "larp-dictionary.tsarevs.ru./A" = {
      ttl     = 600
      records = ["176.53.231.74"]
    }
    "psql.tsarevs.ru./A" = {
      ttl     = 600
      records = ["136.234.79.12"]
    }
    "twilight.tsarevs.ru./A" = {
      ttl     = 3600
      records = ["176.53.231.74"]
    }
    "wheel.tsarevs.ru./DNAME" = {
      ttl     = 3600
      records = ["wheel.tsarevs.ru.website.yandexcloud.net."]
    }
  }
}
