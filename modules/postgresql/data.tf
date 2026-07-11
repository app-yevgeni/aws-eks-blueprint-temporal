data "aws_vpc" "main" {
  filter {
    name   = "tag:Name"
    values = ["eks-vpc"]
  }
}


data "aws_subnets" "private" {

  filter {
    name = "tag:Name"

    values = [
      "private-subnet-*"
    ]
  }
}


data "aws_security_group" "eks_nodes" {

  filter {
    name = "tag:Name"

    values = [
      "eks-node-sg"
    ]
  }
}
