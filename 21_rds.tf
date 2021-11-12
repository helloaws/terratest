resource "aws_db_instance" "lee_rds" {
  allocated_storage = 20
  storage_type = "gp2"
  engine = "mysql"
  engine_version = "8.0"
  instance_class = "db.t2.micro"
  name = "mydb"
  identifier = "test"
  username = "admin" 
  password = "!Giovanni96123"
  parameter_group_name = "default.mysql8.0"
  availability_zone = "ap-northeast-2a"
  db_subnet_group_name = aws_db_subnet_group.lee_dbsb.id
  vpc_security_group_ids = [aws_security_group.lee_sg.id]
  skip_final_snapshot = true 
  
  tags = {
    "Name" = "lee-rds"
  }

}

//db subnet group 생성
resource "aws_db_subnet_group" "lee_dbsb" {
  name = "lee-dbsb"
  subnet_ids = [aws_subnet.lee_priba.id,aws_subnet.lee_pribc.id]

  tags = {
    "Name" = "lee-dbsb-gp"
  }
}