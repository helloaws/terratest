// 리스너 추가

resource "aws_lb_listener" "lee_albli" {
  load_balancer_arn = aws_lb.lee_alb.arn
  port = "80"
  protocol = "HTTP"


default_action {
  type = "forward"
  target_group_arn = aws_lb_target_group.lee_albtg.arn
  }
}