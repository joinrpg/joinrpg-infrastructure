# Записи зоны leotsarev.ru. Ключ — <имя>/<тип>.
locals {
  leotsarev_ru = {
    "leotsarev.ru./DNAME" = {
      ttl     = 600
      records = ["leotsarev.ru.website.yandexcloud.net."]
    }
    "leotsarev.ru./MX" = {
      ttl = 600
      records = [
        "1 aspmx.l.google.com.",
        "10 aspmx2.googlemail.com.",
        "10 aspmx3.googlemail.com.",
        "10 aspmx4.googlemail.com.",
        "10 aspmx5.googlemail.com.",
        "5 alt1.aspmx.l.google.com.",
        "5 alt2.aspmx.l.google.com.",
      ]
    }
    "leotsarev.ru./TXT" = {
      ttl = 600
      records = [
        "\"google-site-verification=1DGNXyp_2C6rxMvhoKNvTonTtPNaDHC3zxvlZfJ36Hc\"",
        "\"v=spf1 ip4:109.95.210.183 ip4:109.95.212.25 a mx include:_spf.google.com ~all\"",
      ]
    }
    "_acme-challenge.leotsarev.ru./CNAME" = {
      ttl     = 600
      records = ["fpqemohoafg34hj4p05l.cm.yandexcloud.net."]
    }
    "_acme-challenge.return-avatars.leotsarev.ru./CNAME" = {
      ttl     = 600
      records = ["fpqfoa91hupu2pi2uhma.cm.yandexcloud.net."]
    }
    "_acme-challenge.www.leotsarev.ru./CNAME" = {
      ttl     = 600
      records = ["fpqemohoafg34hj4p05l.cm.yandexcloud.net."]
    }
    "corona.leotsarev.ru./CNAME" = {
      ttl     = 600
      records = ["leotsarev.github.io."]
    }
    "dkim._domainkey.leotsarev.ru./TXT" = {
      ttl     = 60
      records = ["\"v=DKIM1; k=rsa; s=email; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC7M9pW2JHh3yJnGmAijMoRzKTxLoqfIGtwYJKTRJRQjA6Y4SKoy1bLJF6tQUOldiCJYbxEIgKdUebG4WzjViU5zNtvbMolQdFt+GkKqBi/O8Ib2LjciAySLb28pIIMX6RXuuYvJym0747iCP01+897hoMGf9wO6QNsBL7AXWIW/QIDAQAB\""]
    }
    "fevronia.leotsarev.ru./CNAME" = {
      ttl     = 60
      records = ["leotsarev.github.io."]
    }
    "honor-rpg.leotsarev.ru./CNAME" = {
      ttl     = 600
      records = ["leotsarev.github.io."]
    }
    "return-avatars.leotsarev.ru./DNAME" = {
      ttl     = 600
      records = ["return-avatars.leotsarev.ru.website.yandexcloud.net."]
    }
    "return-rpg.leotsarev.ru./CNAME" = {
      ttl     = 600
      records = ["leotsarev.github.io."]
    }
    "www.leotsarev.ru./DNAME" = {
      ttl     = 600
      records = ["leotsarev.ru."]
    }
  }
}
