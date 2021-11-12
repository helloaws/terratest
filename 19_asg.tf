//오토스케일링 그룹 생성
resource "aws_autoscaling_group" "lee_asg" {
  name = "lee-asg"
  min_size = 2
  max_size = 10
  health_check_grace_period = 10
  health_check_type = "EC2"
  desired_capacity = 2
  force_delete = true
  launch_configuration = aws_launch_configuration.lee_aslc.name
  vpc_zone_identifier = [aws_subnet.lee_puba.id,aws_subnet.lee_pubc.id]

  tags = [ {
    "Name" = "lee-asg"
  } ]
}