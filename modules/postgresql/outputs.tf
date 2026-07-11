output "endpoint" {
  value = aws_db_instance.postgres.address
}

output "port" {
  value = aws_db_instance.postgres.port
}

output "database" {
  value = aws_db_instance.postgres.db_name
}

output "username" {
  value = aws_db_instance.postgres.username
}
