# Политики доступа к бакетам.
# Пользователю с ролью s3.user бакет без политики недоступен: роль даёт только список бакетов
# и GetBucketLocation, а читать и писать объекты разрешает политика. Как только у бакета есть
# политика, всё, что она явно не разрешает, запрещено — в том числе для пользователя Terraform с ролью
# member в проекте: без правила Terraform на 16.10.2026 получал 403 на HeadBucket и GetBucketPolicy,
# и plan всего слоя падал.
# Selectel хранит политику в своём виде: Action по алфавиту, Principal "*" как { AWS = ["*"] }.
# Код написан в том же виде, иначе plan показывает вечный дифф.
# https://docs.selectel.ru/s3/about/manage-access/
# https://docs.selectel.ru/s3/buckets/bucket-policy/about-bucket-policy/

resource "aws_s3_bucket_policy" "avatars" {
  for_each = local.avatar_buckets

  bucket = aws_s3_bucket.buckets[each.key].id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        # Terraform читает все настройки бакета при каждом plan и управляет самой политикой.
        # Действий HeadBucket и *BucketPolicy нет в списке Selectel, поэтому — все действия
        Sid       = "Terraform"
        Effect    = "Allow"
        Principal = { AWS = [local.terraform_user_id] }
        Action    = ["*"]
        Resource  = ["arn:aws:s3:::${each.key}", "arn:aws:s3:::${each.key}/*"]
      },
      {
        # Приложение только загружает аватарки и проверяет бакет в health check
        Sid       = "AppUpload"
        Effect    = "Allow"
        Principal = { AWS = [local.s3_service_users[each.value]] }
        Action    = ["s3:GetObject", "s3:PutObject"]
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
        Principal = { AWS = ["*"] }
        Action    = ["s3:GetObject"]
        Resource  = ["arn:aws:s3:::${each.key}/*"]
      },
    ]
  })
}
