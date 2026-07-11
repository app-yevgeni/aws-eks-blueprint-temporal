variable "db_password" {
  description = "Master password for PostgreSQL"
  type        = string
  sensitive   = true
}

variable "db_username" {
  description = "Master username"
  type        = string
  default     = "postgres"
}

variable "db_name" {
  description = "Initial database name"
  type        = string
  default     = "postgres"
}

variable "tags" {
  type    = map(string)
  default = {}
}
