//security group 생성
resource "aws_security_group" "lee_sg" {
  name        = "Allow-WEB"
  description = "http-ssh-icmp"
  vpc_id      = aws_vpc.hello-vpc.id
  //inbound
  ingress = [
    {
      description      = "ssh" //설명
      from_port        = 22 //port 번호(시작 범위)
      to_port          = 22 //port 번호(끝 범위)
      protocol         = "tcp" //protocol name
      cidr_blocks      = ["0.0.0.0/0"] //anywhere
      ipv6_cidr_blocks = ["::/0"] //terraform에선 필수 값
      security_groups  = null //terraform에선 필수 값
      prefix_list_ids  = null //terraform에선 필수 값
      self             = null //terraform에선 필수 값
    },
    {
      description      = "http"
      from_port        = 80
      to_port          = 80
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
      security_groups  = null
      prefix_list_ids  = null
      self             = null
    },
    {
      description      = "icmp"
      from_port        = 0
      to_port          = 0
      protocol         = "icmp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
      security_groups  = null
      prefix_list_ids  = null
      self             = null
    },
    {
      description      = "mysql"
      from_port        = 3306
      to_port          = 3306
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
      security_groups  = null
      prefix_list_ids  = null
      self             = null
    }
  ]
  //outbound
  egress = [
    {
      description      = "All"
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
      security_groups  = null
      prefix_list_ids  = null
      self             = null
    }
  ]
  tags = {
    Name = "lee-sg"
  }
} 
