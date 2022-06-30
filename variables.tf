variable "region" {
    type = string
    description = "AWS Region"
}

variable "vpc-cidr" {
    type = string
    description = "(optional) describe your variable"
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

variable "vpcname" {
    type = string
    description = "VPC Name"
}