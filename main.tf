module "vpc" {
  source = "./modules/vpc"

  name              = var.name
  vpc_cidr          = var.vpc_cidr
  subnet_cidr       = var.subnet_cidr
  availability_zone = "${var.aws_region}a"
}