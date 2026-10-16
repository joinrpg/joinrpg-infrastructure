# Политики доступа к бакетам.
# Пользователю с ролью s3.user бакет без политики недоступен: роль даёт только список бакетов
# и GetBucketLocation, а читать и писать объекты разрешает политика. Как только у бакета есть
# политика, всё, что она явно не разрешает, запрещено. На роли s3.admin и member политика не влияет,
# поэтому Terraform она не закроет.
# https://docs.selectel.ru/s3/about/manage-access/
# https://docs.selectel.ru/s3/buckets/bucket-policy/about-bucket-policy/

resource "aws_s3_bucket_policy" "avatars" {
  for_each = local.avatar_buckets

  bucket = aws_s3_bucket.buckets[each.key].id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        # Приложение только загружает аватарки и проверяет бакет в health check
        Sid       = "AppUpload"
        Effect    = "Allow"
        Principal = { AWS = [local.s3_service_users[each.value]] }
        Action    = ["s3:PutObject", "s3:GetObject"]
        Resource  = ["arn:aws:s3:::${each.key}/*"]
      },
      {
        Sid       = "AppHealthCheck"
        Effect    = "Allow"
        Principal = { AWS = [local.s3_service_users[each.value]] }
        Action    = ["s3:GetBucketLocation"]
        Resource  = ["arn:aws:s3:::${each.key}"]
      },
      {
        # Бакет публичный, аватарки отдаются с его домена. Документация не говорит, закрывает ли
        # политика анонимное чтение через публичный домен, поэтому чтение разрешено всем явно
        Sid       = "PublicRead"
        Effect    = "Allow"
        Principal = "*"
        Action    = ["s3:GetObject"]
        Resource  = ["arn:aws:s3:::${each.key}/*"]
      },
    ]
  })

  lifecycle {
    precondition {
      condition     = local.s3_service_users[each.value] != ""
      error_message = "Не задан ID сервисного пользователя ${each.value} в local.s3_service_users."
    }
  }
}
