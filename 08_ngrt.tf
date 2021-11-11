resource "aws_route_table" "lee_ngrt" {
  vpc_id = aws_vpc.hello-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.lee_ng.id
  }

  tags = {
    "Name" = "lee-ngrt"
  }
}