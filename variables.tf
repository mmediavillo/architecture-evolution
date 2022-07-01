variable "name" {
    type = string
    description = "Project Name"
}

variable "region" {
    type = string
    description = "AWS Region"
}

variable "environment" {
    type = string
    description = "Environment"
}

variable "availability_zone" {
    type = string
    description = "AZ"
}

variable "all_cidr_block" {
    type = string
    description = "Network Route to Any"
}
variable "vpc-cidr" {
    type = string
    description = "VPC CIDR Block"
}

variable "priv-subnet" {
    type = string
    description = "Backend Subnet"
}

variable "pub-subnet" {
    type = string
    description = "Front End Subnet"
}

variable "db-subnet" {
    type = string
    description = "Database Subnet"
}

variable "ec2_instance_type" {
  type = string
  default = "t2.micro"
  description = "EC2 Instance Type"
}

