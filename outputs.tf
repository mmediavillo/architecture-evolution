# output "public_natgw" {
#    value = "${aws_eip.public_natgw.id}"
#}

#Security Group Outputs
output "security_group_public" {
  value = aws_security_group.public.id
}

output "security_group_private" {
  value = aws_security_group.private.id
}