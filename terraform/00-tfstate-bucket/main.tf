terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.80.0"
    }
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

  endpoints {
    s3 = local.s3_endpoint
  }
}
