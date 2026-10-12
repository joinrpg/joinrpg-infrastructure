terraform {
  required_providers {
    selectel = {
      source  = "selectel/selectel"
      version = "8.6.0"
    }
  }

  backend "s3" {
    endpoints = {
      s3 = "https://s3.ru-6.storage.selcloud.ru"
    }
    bucket = "joinrpg-tfstate"
    region = "ru-6"
    key    = "dns.tfstate"

    skip_region_validation      = true
    skip_credentials_validation = true
    skip_requesting_account_id  = true
    skip_s3_checksum            = true
    skip_metadata_api_check     = true
  }
}

# Имя и пароль сервисного пользователя провайдер берёт из переменных окружения OS_USERNAME и OS_PASSWORD
provider "selectel" {
  domain_name = local.account_id
  auth_url    = local.auth_url
  auth_region = local.region
}
