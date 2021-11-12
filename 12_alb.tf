//부하분산 생성

resource "aws_lb" "lee_alb" {
  name = "lee-alb"
  internal = false //false:외부 true:내부
  load_balancer_type = "application"
  security_groups = [aws_security_group.lee_sg.id]
  subnets = [aws_subnet.lee_puba.id,aws_subnet.lee_pubc.id]

  tags = {
    "Name" = "lee-alb"
  }
}