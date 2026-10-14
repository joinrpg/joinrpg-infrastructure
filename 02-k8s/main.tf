terraform {
  required_providers {
    selectel = {
      source  = "selectel/selectel"
      version = "8.6.0"
    }
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "3.4.0"
    }
  }

  backend "s3" {
    endpoints = {
      s3 = "https://s3.ru-6.storage.selcloud.ru"
    }
    bucket = "joinrpg-tfstate"
    region = "ru-6"
    key    = "k8s.tfstate"

    skip_region_validation      = true
    skip_credentials_validation = true
    skip_requesting_account_id  = true
    skip_s3_checksum            = true
    skip_metadata_api_check     = true
  }
}

# Имя и пароль сервисного пользователя провайдеры берут из переменных окружения OS_USERNAME и OS_PASSWORD
provider "selectel" {
  domain_name = local.account_id
  auth_url    = local.auth_url
  auth_region = local.region
}

provider "openstack" {
  auth_url            = local.auth_url
  user_domain_name    = local.account_id
  project_domain_name = local.account_id
  tenant_id           = local.project_id
  region              = local.region
}
