//명시적 서브넷 연결
resource "aws_route_table_association" "lee_ngass_a" {
  subnet_id = aws_subnet.lee_pria.id
  route_table_id = aws_route_table.lee_ngrt.id
}

resource "aws_route_table_association" "lee_ngass_c" {
  subnet_id = aws_subnet.lee_pric.id
  route_table_id = aws_route_table.lee_ngrt.id
}