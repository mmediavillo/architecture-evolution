resource "aws_route_table_association" "public" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "private" {
  subnet_id      = aws_subnet.private.id
  route_table_id = aws_route_table.private.id
}

resource "aws_route_table_association" "dbprivate" {
  subnet_id      = aws_subnet.dbprivate.id
  route_table_id = aws_route_table.private.id
}

#resource "aws_route_table_association" "private" {
#  nat_gateway_id = aws_nat_gateway.public.id
#  route_table_id = aws_route_table.private.id
#}