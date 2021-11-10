//10.0.0.0/16 vpc 전용 Internet Gateway
resource "aws_internet_gateway" "lee_ig" {
  vpc_id = aws_vpc.hello-vpc.id
  tags = {
    "Name" = "lee-ig"
  }
}