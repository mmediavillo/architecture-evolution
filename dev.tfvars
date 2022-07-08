name              = "WP-Cat-Evolution"
environment       = "dev"
region            = "us-east-1"
availability_zone = "us-east-1a"

all_cidr_block = "0.0.0.0/0"
vpc-cidr       = "172.16.0.0/16"
pub-subnet     = "172.16.1.0/24"
priv-subnet    = "172.16.2.0/24"
db-subnet      = "172.16.3.0/24"

ec2_pub_ami       = "ami-0cff7528ff583bf9a"
ec2_instance_type = "t2.micro"
web_priv_ip       = "172.16.1.10"