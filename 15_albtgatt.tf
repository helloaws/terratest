//부하분산 타겟그룹 대상지정
resource "aws_lb_target_group_attachment" "lee_tgatt" {
  target_group_arn = aws_lb_target_group.lee_albtg.arn
  target_id = aws_instance.lee_weba.id
  port = 80


}