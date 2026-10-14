terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.80.0"
    }
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
    key    = "storage.tfstate"

    skip_region_validation      = true
    skip_credentials_validation = true
    skip_requesting_account_id  = true
    skip_s3_checksum            = true
    skip_metadata_api_check     = true
  }
}

# В провайдере selectel нет ресурса для бакета, поэтому S3 Selectel управляется через провайдер aws.
# S3-ключ сервисного пользователя провайдер берёт из переменных окружения
# AWS_ACCESS_KEY_ID и AWS_SECRET_ACCESS_KEY
provider "aws" {
  region = local.region

  skip_region_validation      = true
  skip_credentials_validation = true
  skip_requesting_account_id  = true
  skip_metadata_api_check     = true

  # В именах бакетов-сайтов есть точки: с адресом вида <бакет>.s3.… не проходит проверка сертификата
  s3_use_path_style = true

  endpoints {
    s3 = local.s3_endpoint
  }
}

# Имя и пароль сервисного пользователя провайдер берёт из переменных окружения OS_USERNAME и OS_PASSWORD
provider "selectel" {
  domain_name = local.account_id
  auth_url    = local.auth_url
  auth_region = local.region
}
