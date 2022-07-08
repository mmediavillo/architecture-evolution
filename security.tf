#Traffic rules from the internet
resource "aws_security_group" "public" {
  name        = "${var.environment}-${var.name}-public"
  description = "Allows traffic to and from the internet into the public subnet"
  vpc_id      = aws_vpc.main.id
  tags = {
    Name = "Allow outbound and inbound traffic from the internet"
  }
}

resource "aws_security_group_rule" "public_outbound" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = [aws_vpc.main.cidr_block]
  security_group_id = aws_security_group.public.id
}

#Temporarily removed to allow acces later for a Bastion server
#resource "aws_security_group_rule" "public_ssh" {
#  type              = "ingress"
#  from_port         = 22
#  to_port           = 22
#  protocol          = "tcp"
#  cidr_blocks       = ["0.0.0.0/0"]
#  security_group_id = aws_security_group.public.id
#}

resource "aws_security_group_rule" "inbound_https" {
  type              = "ingress"
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.public.id
}

resource "aws_security_group_rule" "inbound_http" {
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.public.id
}

#Allow all traffic originating from within the VPC
resource "aws_security_group" "private" {
  name        = "${var.environment}-${var.name}-private"
  description = "Allow all traffic originating from within the VPC"
  vpc_id      = aws_vpc.main.id
  tags = {
    Name = "SG Private Traffic"
  }
}

resource "aws_security_group_rule" "internal_vpc" {
  type              = "ingress"
  from_port         = 0
  to_port           = 65535
  protocol          = "-1"
  cidr_blocks       = [aws_vpc.main.cidr_block]
  security_group_id = aws_security_group.private.id
}