variable "db_username" {
  default = "postgres"
}

variable "db_password" {
  sensitive = true
}

variable "db_name" {
  default = "appdb"
}
