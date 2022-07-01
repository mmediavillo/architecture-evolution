name = "WP-Cat-Evolution"
environment = "dev"
region      = "us-east-1"
availability_zone = "us-east-1a"

all_cidr_block = "0.0.0.0/0"
vpc-cidr = "10.0.0.0/16"
pub-subnet = "10.0.1.0/24"
priv-subnet = "10.0.2.0/24"
db-subnet = "10.0.3.0/24"

ec2_instance_type = "t2.micro"