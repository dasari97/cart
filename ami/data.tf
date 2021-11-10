data "aws_secretsmanager_secret" "Dev_secret" {
  name = "dev"
}

data "aws_secretsmanager_secret_version" "Dev_secret" {
  secret_id = data.aws_secretsmanager_secret.Dev_secret.id
}