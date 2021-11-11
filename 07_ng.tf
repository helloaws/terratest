resource "aws_eip" "lee_eip_ng" {
  vpc = true
}

resource "aws_nat_gateway" "lee_ng" {
  allocation_id = aws_eip.lee_eip_ng.id
  subnet_id = aws_subnet.lee_puba.id
  tags = {
    "Name" = "lee_ng"
  }
  depends_on = [
    aws_internet_gateway.lee_ig
  ]
}