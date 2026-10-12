# Записи зоны kogda-igra.ru. Ключ — <имя>/<тип>.
locals {
  kogda_igra_ru = {
    "kogda-igra.ru./A" = {
      ttl     = 3600
      comment = "временный редирект"
      records = ["37.46.128.30"]
    }
    "kogda-igra.ru./MX" = {
      ttl     = 600
      records = ["10 mx.yandex.net."]
    }
    "kogda-igra.ru./TXT" = {
      ttl = 600
      records = [
        "\"v=spf1 redirect=_spf.yandex.net\"",
        "\"yandex-verification: d162fce9dc27f761\"",
      ]
    }
    "_acme-challenge.kogda-igra.ru./TXT" = {
      ttl     = 600
      records = ["\"pSbGqzM8owVin6PjFC6Xarq6UYHezWhWXgqca6a81nI\""]
    }
    "_acme-challenge.stage.kogda-igra.ru./TXT" = {
      ttl     = 600
      records = ["\"cZb5nrOwG52F8ptjspW4z4QyY4n4iY48FJnVu7sDGPU\""]
    }
    "dev.kogda-igra.ru./A" = {
      ttl     = 3600
      records = ["51.250.99.233"]
    }
    "dev.kogda-igra.ru./MX" = {
      ttl = 600
      records = [
        "10 mxa.eu.mailgun.org.",
        "10 mxb.eu.mailgun.org.",
      ]
    }
    "dev.kogda-igra.ru./TXT" = {
      ttl     = 600
      records = ["\"v=spf1 include:mailgun.org ~all\""]
    }
    "email.dev.kogda-igra.ru./CNAME" = {
      ttl     = 600
      records = ["eu.mailgun.org."]
    }
    "email.kogda-igra.ru./CNAME" = {
      ttl     = 600
      records = ["eu.mailgun.org."]
    }
    "mail._domainkey.kogda-igra.ru./TXT" = {
      ttl     = 600
      records = ["\"v=DKIM1; k=rsa; t=s; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDSdZ/a2qkGNwQ/tG0Z76+R1UZUxx+kENwYLqW+FDrrreuX3apuhDIatAw4VNP3Z6cEcg4qzJ/RlIbKmPqVGTkppwbtYkq2dyZT4XlenprPVqCEEjMQgWrz75sNG8DhOaXiO5PjzvR7X8SUKtB9T2dBXLsGS4zS6S7yvDttP9MVTQIDAQAB\""]
    }
    "mta._domainkey.dev.kogda-igra.ru./TXT" = {
      ttl     = 600
      records = ["\"k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDGhnUixJeS5QejyvMwyuZGJpRQfDlof7D0JW1sm9Qqs7Ay02VL7Z4TxvPYM1oAarDhznJcT+WBPVoPuO60XKbR0z+fDrrWlDFX2aWuSDPQ9noXDMFY6ImA9/LNbCFrYp2O4SmczawmVoSbaUD9UAllY119jSTUGvK2q7RnNSkfowIDAQAB\""]
    }
    "prod.kogda-igra.ru./A" = {
      ttl     = 43200
      records = ["51.250.99.233"]
    }
    "s1._domainkey.kogda-igra.ru./TXT" = {
      ttl     = 600
      records = ["\"k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCVSEfe6PucymUl3FKD1cMdEnPK/RCZOqpmRYFAkSAGY6GSR2edFFvIGT7GMSlSMl5J4+tbdxhgy9PxZGavh6U7KtimDl4GjKessc55GFssW7YBNGdNw0MWsRpvCqYy4ot4YE73XVvx6EhrsDv4eY6arkmzte1LrK0p3WMzQV+mmQIDAQAB\""]
    }
    "www.kogda-igra.ru./A" = {
      ttl     = 43200
      records = ["37.46.128.30"]
    }
  }
}
