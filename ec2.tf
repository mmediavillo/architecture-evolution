#Public facing EC2 instance
resource "aws_instance" "web" {
  ami                    = var.ec2_pub_ami
  instance_type          = var.ec2_instance_type
  key_name               = data.aws_key_pair.dev_deploy.key_name
  subnet_id              = aws_subnet.public.id
  private_ip             = var.web_priv_ip
  vpc_security_group_ids = [aws_security_group.public.id]
  tags = {
    Name = "Public EC2"
  }
}