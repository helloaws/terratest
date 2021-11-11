//internet gateway routing
resource "aws_route_table" "lee_rf" {
  vpc_id = aws_vpc.hello-vpc.id
 
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.lee_ig.id
  }
  tags = {
    "Name" = "lee-rt"
  }
  
}