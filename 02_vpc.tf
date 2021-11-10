resource "aws_vpc" "hello-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    "Name" = "lee-vpc"
  }
}