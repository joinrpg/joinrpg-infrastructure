# Записи зоны bastilia.ru. Ключ — <имя>/<тип>.
locals {
  bastilia_ru = {
    "bastilia.ru./A" = {
      ttl     = 600
      records = ["109.95.212.25"]
    }
    "bastilia.ru./MX" = {
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
    "bastilia.ru./TXT" = {
      ttl     = 600
      records = ["\"v=spf1 include:_spf.google.com ~all\""]
    }
    "_acme-challenge.kievrus.bastilia.ru./CNAME" = {
      ttl     = 600
      records = ["fpq2btghfnvdmjsjkieq.cm.yandexcloud.net."]
    }
    "_acme-challenge.static.rating.bastilia.ru./CNAME" = {
      ttl     = 600
      records = ["fpqpl3h7j46ttvcfjmmk.cm.yandexcloud.net."]
    }
    "_acme-challenge.wheel.bastilia.ru./CNAME" = {
      ttl     = 600
      records = ["fpq5tncv3nsreakfeiic.cm.yandexcloud.net."]
    }
    "ab.bastilia.ru./CNAME" = {
      ttl     = 600
      records = ["ghs.google.com."]
    }
    "alisa.bastilia.ru./CNAME" = {
      ttl     = 600
      records = ["bastilia.ru."]
    }
    "alpha.bastilia.ru./CNAME" = {
      ttl     = 600
      records = ["bastilia.ru."]
    }
    "badgame.bastilia.ru./DNAME" = {
      ttl     = 3600
      records = ["bastilia.ru."]
    }
    "blackcity.bastilia.ru./DNAME" = {
      ttl     = 600
      records = ["bastilia.ru."]
    }
    "bsg.bastilia.ru./DNAME" = {
      ttl     = 600
      records = ["bastilia.ru."]
    }
    "coldwar.bastilia.ru./DNAME" = {
      ttl     = 600
      records = ["bastilia.ru."]
    }
    "dostoevsky.bastilia.ru./DNAME" = {
      ttl     = 600
      records = ["bastilia.ru."]
    }
    "ftp.bastilia.ru./DNAME" = {
      ttl     = 600
      records = ["bastilia.ru."]
    }
    "google._domainkey.bastilia.ru./TXT" = {
      ttl     = 3600
      records = ["\"v=DKIM1; k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCuhBEpzsPIeNWOlJEDW3gWcL8+bgNxou7HGG/2T4FIeBZfj0yWH797jy4n+G/l/+4rpmIBmCAkyFuA7c9wrLgnT5quchVSFAlgHtmkQ/nKhtRoE1ignwm+uBSt7auygfAY5A9IFSEn2gL1hj5sH9VSruc5y00cNl3pdluo3JcA3QIDAQAB\""]
    }
    "honor.bastilia.ru./DNAME" = {
      ttl     = 600
      records = ["bastilia.ru."]
    }
    "ice.bastilia.ru./DNAME" = {
      ttl     = 600
      records = ["bastilia.ru."]
    }
    "kievrus.bastilia.ru./DNAME" = {
      ttl     = 600
      records = ["kievrus.bastilia.ru.website.yandexcloud.net."]
    }
    "krynn.bastilia.ru./DNAME" = {
      ttl     = 600
      records = ["bastilia.ru."]
    }
    "led.bastilia.ru./DNAME" = {
      ttl     = 600
      records = ["bastilia.ru."]
    }
    "leo.bastilia.ru./DNAME" = {
      ttl     = 600
      records = ["ghs.googlehosted.com."]
    }
    "lost.bastilia.ru./DNAME" = {
      ttl     = 600
      records = ["bastilia.ru."]
    }
    "mail.bastilia.ru./DNAME" = {
      ttl     = 600
      records = ["ghs.google.com."]
    }
    "old.bastilia.ru./DNAME" = {
      ttl     = 600
      records = ["bastilia.ru."]
    }
    "poselok.bastilia.ru./DNAME" = {
      ttl     = 600
      records = ["bastilia.ru."]
    }
    "rating.bastilia.ru./A" = {
      ttl     = 3600
      records = ["51.250.99.233"]
    }
    "sites.bastilia.ru./DNAME" = {
      ttl     = 600
      records = ["ghs.google.com."]
    }
    "static.rating.bastilia.ru./DNAME" = {
      ttl     = 600
      records = ["static.rating.bastilia.ru.website.yandexcloud.net."]
    }
    "wheel.bastilia.ru./DNAME" = {
      ttl     = 600
      records = ["wheel.bastilia.ru.website.yandexcloud.net."]
    }
    "www.bastilia.ru./CNAME" = {
      ttl     = 600
      records = ["bastilia.ru."]
    }
    "www.bsg.bastilia.ru./CNAME" = {
      ttl     = 3600
      records = ["bastilia.ru."]
    }
    "www.kievrus.bastilia.ru./CNAME" = {
      ttl     = 3600
      records = ["bastilia.ru."]
    }
    "www.rating.bastilia.ru./CNAME" = {
      ttl     = 3600
      records = ["bastilia.ru."]
    }
    "www.wheel.bastilia.ru./CNAME" = {
      ttl     = 3600
      records = ["bastilia.ru."]
    }
  }
}
