terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
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



