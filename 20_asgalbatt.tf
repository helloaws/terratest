//
resource "aws_autoscaling_attachment" "lee_asgalbatt" {
  autoscaling_group_name = aws_autoscaling_group.lee_asg.id
  alb_target_group_arn = aws_lb_target_group.lee_albtg.arn
  
}