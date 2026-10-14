# Записи зоны larp-handbook.ru. Ключ — <имя>/<тип>.
locals {
  larp_handbook_ru = {
    "larp-handbook.ru./A" = {
      ttl     = 3600
      records = ["51.250.99.233"]
    }
    "_acme-challenge.external-images.larp-handbook.ru./CNAME" = {
      ttl     = 3600
      records = ["fpq3iqi6310h6k552tqg.cm.yandexcloud.net."]
    }
    "_acme-challenge.larp-handbook.ru./CNAME" = {
      ttl     = 600
      records = ["fpqv8bv9vom5aqah7ovt.cm.yandexcloud.net."]
    }
    "external-images.larp-handbook.ru./DNAME" = {
      ttl     = 600
      records = ["external-images.larp-handbook.ru.website.yandexcloud.net."]
    }
  }
}
