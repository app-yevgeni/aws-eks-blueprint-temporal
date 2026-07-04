
###  ---  Database Services ---  ###
module "postgresql" {
  source = "./modules/postgresql"
  depends_on = [module.httpd]

  name       = "temporal-postgres"
  username   = "temporal"
  password   = "q1w2e3r4100@test"
  db_name    = "temporal"
  engine_version = "15.5"
  instance_class = "db.t3.medium"

  vpc_security_group_ids = [aws_security_group.rds.id]
  subnet_ids             = module.vpc.private_subnets
  allocated_storage = 100

  tags = {
    env = "dev"
  }
}

###  ---  Application  ---  ###
module "httpd" {
  source = "./modules/httpd"
  depends_on = [kubernetes_namespace.migration]

  name   = "httpd-server"
  namespace = "default"
  replicas  = 1
  image = "virtapp/apache:7f6c4bf4-3-6"
  service_port = 8080
  service_type = "ClusterIP"
}

module "kong" {
  source = "./modules/kong"
  depends_on = [module.httpd]
}

module "temporal" {
  source = "./modules/temporal"
  depends_on = [module.kong]
}

module "ingress" {
  source = "./modules/ingress"
  depends_on = [module.temporal]
}


