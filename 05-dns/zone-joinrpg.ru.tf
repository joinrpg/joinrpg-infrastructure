# Записи зоны joinrpg.ru. Ключ — <имя>/<тип>.
locals {
  joinrpg_ru = {
    "joinrpg.ru./A" = {
      ttl     = 3600
      records = ["176.53.231.74"]
    }
    "joinrpg.ru./DNAME" = {
      ttl     = 3600
      records = ["joinrpg.ru.website.yandexcloud.net."]
    }
    "joinrpg.ru./MX" = {
      ttl     = 3600
      records = ["10 mx.yandex.net."]
    }
    "joinrpg.ru./TXT" = {
      ttl = 3600
      records = [
        "\"google-site-verification=CiWwdhpkYAJn6Ojszw0dnBDyc5cf42Sxt7NoAlRz42I\"",
        "\"mailru-verification: 0e6dbab10c3de090\"",
        "\"mailru-verification: a2a8c50db5797e9e\"",
        "\"v=spf1 include:_spf.yandexcloud.net include:_spf.yandex.net ~all\"",
        "\"yandex-verification: 3a9531db90083dfb\"",
      ]
    }
    "*.k8s.joinrpg.ru./A" = {
      ttl     = 43200
      records = ["51.250.99.233"]
    }
    "_acme-challenge.components.dev.joinrpg.ru./TXT" = {
      ttl     = 600
      records = ["\"0rm6TOgdiZnJAL6dddQ_H9DOSJhyUKZN2ZmycJSxXxE\""]
    }
    "_acme-challenge.components.joinrpg.ru./TXT" = {
      ttl     = 600
      records = ["\"rhNML3l1BmyxVYBab_hOY0J1-OevP3w0k7cUZIOOd4k\""]
    }
    "_acme-challenge.dev.joinrpg.ru./TXT" = {
      ttl     = 600
      records = ["\"LZOEPVeGoI7Qj-CoCKeO045uiGQqamPzGUTo5BNsbfY\""]
    }
    "_acme-challenge.docs.dev.joinrpg.ru./CNAME" = {
      ttl     = 600
      records = ["fpqg190l0ipgum1pbbdu.cm.yandexcloud.net."]
    }
    "_acme-challenge.docs.joinrpg.ru./CNAME" = {
      ttl     = 600
      records = ["fpqtkfbfqmlomfb27uc9.cm.yandexcloud.net."]
    }
    "_acme-challenge.id.dev.joinrpg.ru./TXT" = {
      ttl     = 600
      records = ["\"NWrnUbjdLCsObxs84KtiCerbOliMjKpn0zyIUIBZTTk\""]
    }
    "_acme-challenge.id.joinrpg.ru./TXT" = {
      ttl     = 3600
      records = ["\"nlDfJwiwlB9wH5M30kfW85cOvNxq_Mp3AV204ZyR008\""]
    }
    "_acme-challenge.joinrpg.ru./TXT" = {
      ttl     = 3600
      records = ["\"5J8KIO4jr2ej1kWg9TQ8yxa8sHaZkEyb5kat0lNCktw\""]
    }
    "_dmarc.dev.joinrpg.ru./TXT" = {
      ttl     = 43200
      records = ["\"v=DMARC1;p=none\""]
    }
    "_dmarc.joinrpg.ru./AAAA" = {
      ttl     = 43200
      records = ["2a00:e460:2a00:c01d:7ea:0:8:abc8"]
    }
    "_dmarc.joinrpg.ru./TXT" = {
      ttl     = 3600
      records = ["\"v=DMARC1; p=none; rua=mailto:a7c5296d2417160@rep.dmarcanalyzer.com; ruf=mailto:a7c5296d2417160@for.dmarcanalyzer.com; sp=none; fo=1;\""]
    }
    "_github-challenge-joinrpg.joinrpg.ru./TXT" = {
      ttl     = 3600
      records = ["\"a75d7ce277\""]
    }
    "ai.joinrpg.ru./A" = {
      ttl     = 3600
      records = ["51.250.99.233"]
    }
    "avatars.dev.joinrpg.ru./A" = {
      ttl     = 3600
      comment = "бакет joinrpg-dev-avatars"
      records = ["176.53.231.74"]
    }
    "avatars.joinrpg.ru./A" = {
      ttl     = 3600
      comment = "бакет joinrpg-prod-avatars"
      records = ["176.53.231.74"]
    }
    "awverify.dev.joinrpg.ru./CNAME" = {
      ttl     = 3600
      records = ["awverify.joinrpg-dev.azurewebsites.net."]
    }
    "awverify.joinrpg.ru./CNAME" = {
      ttl     = 3600
      records = ["awverify.joinrpg.azurewebsites.net."]
    }
    "awverify.www.joinrpg.ru./CNAME" = {
      ttl     = 3600
      records = ["awverify.joinrpg.azurewebsites.net."]
    }
    "components.joinrpg.ru./A" = {
      ttl     = 3600
      records = ["176.53.231.74"]
    }
    "coroot.joinrpg.ru./A" = {
      ttl     = 3600
      records = ["51.250.99.233"]
    }
    "dev-components.joinrpg.ru./A" = {
      ttl     = 3600
      records = ["176.53.231.74"]
    }
    "dev.joinrpg.ru./A" = {
      ttl     = 43200
      records = ["176.53.231.74"]
    }
    "dev.joinrpg.ru./MX" = {
      ttl     = 3600
      records = ["10 mx.yandex.net."]
    }
    "dev.joinrpg.ru./TXT" = {
      ttl = 3600
      records = [
        "\"v=spf1 include:_spf.yandexcloud.net ~all\"",
        "\"yandex-verification: db0eef06b4703d64\"",
      ]
    }
    "devid.joinrpg.ru./A" = {
      ttl     = 3600
      records = ["176.53.231.74"]
    }
    "docs.dev.joinrpg.ru./CNAME" = {
      ttl     = 3600
      records = ["4b5fc09b-6e5a-4c57-87a8-2c1e5c12f496.selstorage.ru."]
    }
    "docs.joinrpg.ru./CNAME" = {
      ttl     = 3600
      records = ["docs.joinrpg.ru.website.yandexcloud.net."]
    }
    "id.joinrpg.ru./A" = {
      ttl     = 3600
      records = ["176.53.231.74"]
    }
    "krs._domainkey.joinrpg.ru./AAAA" = {
      ttl     = 3600
      records = ["2a00:e460:2a00:c01d:7ea:0:8:abc8"]
    }
    "krs._domainkey.joinrpg.ru./TXT" = {
      ttl     = 3600
      records = ["\"k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC4K1zMxLEQZgrCfmYkLjJuvBmQw78DwVsO+cgUAbKCBrGSzQQPivts2N7p+Y3mu3zMcjVBGsKL/pkYMU0pqC2K1PuR46MCB2EmSyHErvBlxU10CmaRxud51OWtQCXrAKUPn3xVw+8kIvoXJoNmTh/xrIksHyUUJX1CuGLnDg+KDQIDAQAB\""]
    }
    "mail._domainkey.joinrpg.ru./TXT" = {
      ttl     = 3600
      comment = "yandex360 dkim"
      records = ["\"v=DKIM1; k=rsa; t=s; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC6L17pAZxmLGAF6NBWX4H54CHGbHeZVD/XA8ds0PNETsrOOQLhEWa9DnAlfZm8Vd5Thy8vdnzFnz6Rok/mjHO9GMEoBoTbS0Lxm6Y6LWc84voQa+BGdpLdSjpdWwVPcndVHLGQWP7a6R6EQbwEcU6p9O2jDuitCKRTvuSUMFBc2wIDAQAB\""]
    }
    "postbox._domainkey.dev.joinrpg.ru./TXT" = {
      ttl     = 43200
      records = ["\"v=DKIM1;h=sha256;k=rsa;p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAsJ6nk6gYRrwAI42NrCHezofyqeDe48kuJzDHXNlCeDhK7DKPbvvlWMqNnk6bNF4tbAtLki1Q0/XNR4Uns6FBEDZNSe3LjoUaLHiZg4UriI/kseDnyPoRFi4LznaV/3kdec0xcguImxanrHOPoToyVtzcIj24yjXSZT40/omEOkogCG7kvE+9SWpT1Y\" \"0WsxwNUQ4qOBnVwkMHqzKb82WJ1T7PU30epJ9f4oGacsEbP3DMN3t2jYyGiAiYVFtpVVJdJgcPpl77ER53R2g871jSgLhWGgeWwOUbhRVi2A1KvY46yi41kVKKLoulO8CSEvEVLb5QhWS3UZOE6fLP/91ENQIDAQAB\""]
    }
    "postbox._domainkey.joinrpg.ru./TXT" = {
      ttl     = 60
      records = ["\"v=DKIM1;h=sha256;k=rsa;p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAwELp2htOSBgH3e/KAWmEt81sPXhZXZFDt1g4i9/uTbU6i3HrL87HJY7BhCCamZBUn9tcyR8WKdwRY/qOVey1iHEbITaGJ/HvOZ+PRz2q/zRP6FiM0kp0K3kQ9oZKjyQjuPe2hW8m1shZTjIN6QLcm2IexoYPwmOEin9C+/BIYPwQ471pyLT3phIoDQ\" \"gUdgyDpO/QpmM5f7KO4kMIUldZKXZF9kvmek7obOgxUJxHUFB6xd1LJ0zO+fRqYGevvnKG/wZqE1l61gChKg4oMUmDdCS3SL/DmHeZXmCGNucIwraxt/+SMwUNgOTzrYU4G4I8LOP/jFdt816SDblUAf2XawIDAQAB\""]
    }
    "smtp._domainkey.dev.joinrpg.ru./AAAA" = {
      ttl     = 600
      records = ["2a00:e460:2a00:c01d:7ea:0:8:abc8"]
    }
    "smtp._domainkey.dev.joinrpg.ru./TXT" = {
      ttl     = 3600
      records = ["\"k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDIf2JaNBM1atJuPcZTtzy48z9fz1l+mP+ibsPEn9536JcLm+Ron7DbiPuK6u6cy6GprKDVeBfcYdTRL+RrY0s6tX4ZRxpW7aefYoAvl5muzrD5N3Ls7JPqpZzwIyzpEcyQLHadIJMo6AuMcbyfxBEm8Z7Q0OcnBju8aegErUXjywIDAQAB\""]
    }
    "www.joinrpg.ru./A" = {
      ttl     = 3600
      records = ["176.53.231.74"]
    }
  }
}
