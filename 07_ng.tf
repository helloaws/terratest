//EIP 생성
resource "aws_eip" "lee_eip_ng" {
  vpc = true
}

//nat gateway 생성
resource "aws_nat_gateway" "lee_ng" {
  allocation_id = aws_eip.lee_eip_ng.id //eip를 natgateway에 설정
  subnet_id = aws_subnet.lee_puba.id //natgateway를 배치할 서브넷
  tags = {
    "Name" = "lee_ng"
  }
  //nat gateway를 사용하기위해선 igw가 선행되어야하기때문에 설정
  depends_on = [
    aws_internet_gateway.lee_ig
  ]
}