/*
data "aws_ami" "amzn" {
  most_recent = 
  
  filter {
    name = "name"
    values = ["amazon2-ami-hvm-*-x86_64"]
  }

  filter {
    name = "virtualization-type"
    valuse = ["hvm"]
  }
  owner = ["amazon"]
}
*/
//ec2생성
resource "aws_instance" "lee_weba" {
  ami = "ami-04e8dfc09b22389ad" //amazon linux ID
  instance_type = "t2.micro"
  key_name = "lee2-key"
  availability_zone = "ap-northeast-2a"
  private_ip = "10.0.0.11"
  subnet_id = aws_subnet.lee_puba.id //subnet_pub a의 ID
  vpc_security_group_ids = [aws_security_group.lee_sg.id]
  user_data = <<-EOF
                  #!/bin/bash
                  sudo su -
                  yum install -y httpd
                  echo "lee-terraform-1" >> /var/www/html/index.html
                  systemctl start httpd
                  EOF
  
}
//eip 할당
resource "aws_eip" "lee_weba_ip" {
  vpc =true
  instance = aws_instance.lee_weba.id
  associate_with_private_ip = "10.0.0.11"
  depends_on = [
    aws_internet_gateway.lee_ig
  ]
}

output "public_ip" {
  value = aws_instance.lee_weba.public_ip
}