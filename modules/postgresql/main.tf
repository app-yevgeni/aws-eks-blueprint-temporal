
resource "aws_security_group" "postgres" {
  name        = "postgres-rds-sg"
  description = "PostgreSQL access from EKS"
  vpc_id      = data.aws_vpc.main.id

  ingress {
    description     = "Allow PostgreSQL from EKS nodes"
    from_port       = 5432
    to_port         = 5432
    protocol        = "tcp"
    security_groups = [data.aws_security_group.eks_nodes.id]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = var.tags
}


resource "aws_db_subnet_group" "postgres" {
  name = "postgres-private-subnets"

  subnet_ids = data.aws_subnets.private.ids

  tags = var.tags
}


resource "aws_db_instance" "postgres" {

  identifier = "postgres"

  engine         = "postgres"
  engine_version = "16.4"

  instance_class = "db.t3.micro"

  allocated_storage     = 20
  max_allocated_storage = 100

  storage_type      = "gp3"
  storage_encrypted = true


  db_name  = var.db_name
  username = var.db_username
  password = var.db_password


  port = 5432


  db_subnet_group_name = aws_db_subnet_group.postgres.name

  vpc_security_group_ids = [
    aws_security_group.postgres.id
  ]


  publicly_accessible = false


  backup_retention_period = 7

  backup_window = "03:00-04:00"

  maintenance_window = "sun:04:00-sun:05:00"


  auto_minor_version_upgrade = true


  deletion_protection = false

  skip_final_snapshot = true


  tags = var.tags
}
