resource "aws_route_table_association" "public" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.public.id
}
resource "aws_route_table_association" "public_igw" {
  gateway_id     = aws_internet_gateway.main_igw.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "private_1" {
  subnet_id      = aws_subnet.private.id
  route_table_id = aws_route_table.public.id
}
resource "aws_route_table_association" "private_1_igw" {
  gateway_id     = aws_internet_gateway.main_igw.id
  route_table_id = aws_route_table.private_1.id
}

resource "aws_route_table_association" "private_2" {
  subnet_id      = aws_subnet.dbprivate.id
  route_table_id = aws_route_table.public.id
}
resource "aws_route_table_association" "private_2_igw" {
  gateway_id     = aws_internet_gateway.main_igw.id
  route_table_id = aws_route_table.private_2.id
}