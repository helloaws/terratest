//ami 만들기
resource "aws_ami_from_instance" "lee_ami" {
  name = "lee-aws_ami"
  source_instance_id = aws_instance.lee_weba.id

  depends_on = [
    aws_instance.lee_weba
  ]

  tags = {
    "Name" = "lee-ami"
  }
}