# При самом первом apply бакета ещё нет: этот файл нужно временно убрать из каталога,
# создать бакет с локальным tfstate, вернуть файл и перенести состояние командой
# terraform init -migrate-state.
terraform {
  backend "s3" {
    endpoints = {
      s3 = "https://s3.ru-6.storage.selcloud.ru"
    }
    bucket = "joinrpg-tfstate"
    region = "ru-6"
    key    = "tfstate-bucket.tfstate"

    skip_region_validation      = true
    skip_credentials_validation = true
    skip_requesting_account_id  = true
    skip_s3_checksum            = true
    skip_metadata_api_check     = true
  }
}
