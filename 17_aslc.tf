//오토스케일링 시작구성
resource "aws_launch_configuration" "lee_aslc" {
  name_prefix = "lee-web-"
  image_id = aws_ami_from_instance.lee_ami.id
  instance_type = "t2.micro"
  iam_instance_profile = "admin-role"
  security_groups = [aws_security_group.lee_sg.id]
  key_name = "lee2-key"
  # user_data = file("./install.sh")

  lifecycle {
    create_before_destroy = true
  }
}

