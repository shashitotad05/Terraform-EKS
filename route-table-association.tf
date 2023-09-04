resource "aws_route_table_association" "public1-rta" {
  subnet_id = aws_subnet.Public-1.id

  route_table_id = aws_route_table.public-route-table.id

}

resource "aws_route_table_association" "private1-rta" {
  subnet_id = aws_subnet.Private-1.id

  route_table_id = aws_route_table.private1-route-table.id

}
