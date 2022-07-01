terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>4.20.1"
    }
  }

}
terraform {
  backend "s3" {
    bucket = "tf-study-state-backend"
    key    = "tf-study/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = var.region
}

resource "aws_vpc" "main" {
  cidr_block           = var.vpc-cidr
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    name = "${var.environment}-${var.name}-VPC"
  }
}

resource "aws_subnet" "public" {
  vpc_id            = aws_vpc.main.id
  availability_zone = var.availability_zone
  cidr_block        = var.pub-subnet
  tags = {
    name = "${var.environment}-${var.name}-public-1"
  }
}

resource "aws_subnet" "private" {
  vpc_id            = aws_vpc.main.id
  availability_zone = var.availability_zone
  cidr_block        = var.priv-subnet
  tags = {
    name = "${var.environment}-${var.name}-private-1"
  }
}

resource "aws_subnet" "dbprivate" {
  vpc_id            = aws_vpc.main.id
  availability_zone = var.availability_zone
  cidr_block        = var.db-subnet
  tags = {
    name = "${var.environment}-${var.name}-dbprivate-1"
  }
}