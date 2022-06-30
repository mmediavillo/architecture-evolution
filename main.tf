terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~>4.20.1"
    }
  }
}

provider "aws" {
    region = var.region
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.vpcname
  cidr = var.vpc-cidr

  azs             = [var.region]
  private_subnets = [var.priv-subnet]
  public_subnets  = [var.pub-subnet]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}