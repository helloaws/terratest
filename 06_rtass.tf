resource "aws_route_table_association" "lee_rtass_a" {
  subnet_id = aws_subnet.lee_puba.id
  route_table_id = aws_route_table.lee_rf.id

}

resource "aws_route_table_association" "lee_rtass_c" {
  subnet_id = aws_subnet.lee_pubc.id
  route_table_id = aws_route_table.lee_rf.id

}