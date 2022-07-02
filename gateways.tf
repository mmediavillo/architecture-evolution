resource "aws_internet_gateway" "main_igw" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = "main-igw"
  }
}

resource "aws_nat_gateway" "public" {
  allocation_id = aws_eip.pub_eip.id
  subnet_id     = aws_subnet.public.id
  depends_on    = [aws_internet_gateway.main_igw]
  tags = {
    Name = "Public NAT GW"
  }
}

#resource "aws_nat_gateway" "priv1_natgw" {
#  allocation_id = aws_eip.priv1_eip.id
#  subnet_id     = aws_subnet.private.id
#  depends_on    = [aws_internet_gateway.main_igw]
#  tags = {
#    Name = "Private NAT GW"
#  }
#}
#
#resource "aws_nat_gateway" "priv2_natgw" {
#  allocation_id = aws_eip.priv2_eip.id
#  subnet_id     = aws_subnet.dbprivate.id
#  depends_on    = [aws_internet_gateway.main_igw]
#  tags = {
#    Name = "DB Private NAT GW"
#  }
#}