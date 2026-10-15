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
      comment = "доступ к БД через балансировщик кластера: 1433 MSSQL, 5433 PostgreSQL, 2222 SSH ВМ MSSQL (закрыт allowed_cidrs)"
      records = ["176.53.231.74"]
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
