variable "db_user_passwords" {
  type        = map(string)
  description = "Пароли пользователей управляемого PostgreSQL: имя пользователя => пароль"
  sensitive   = true
}
