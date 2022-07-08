#Security Group Outputs
output "security_group_public" {
  value = aws_security_group.public.id
}

output "security_group_private" {
  value = aws_security_group.private.id
}

#Internet gateway public IP
output "igw_pub_ip" {
  value = aws_internet_gateway.main_igw.arn
}

#NAT gateway public IP
output "natgw_pub_ip" {
  value = aws_nat_gateway.public.public_ip
}