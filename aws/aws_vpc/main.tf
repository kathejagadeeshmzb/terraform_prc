# Specify the AWS provider and region
provider "aws" {
  region = "us-west-2"  
}


module "vpc" {
  source             = "./modules/vpc"  
  vpc_cidr_block     = var.vpc_cidr_block
  vpc_name           = var.vpc_name
  subnet_a_cidr      = var.subnet_a_cidr
  subnet_b_cidr      = var.subnet_b_cidr
  subnet_a_name      = var.subnet_a_name
  subnet_b_name      = var.subnet_b_name
  subnet_a_az        = var.subnet_a_az
  subnet_b_az        = var.subnet_b_az
  igw_name           = var.igw_name
  rtable_name        = var.rtable_name
}

