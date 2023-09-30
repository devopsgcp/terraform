
resource "aws_db_instance" "mysql-instance" {
  allocated_storage   = 5
  db_name             = "mydb"
  username            = var.db_user
  password            = var.db_password
  engine              = "mysql"
  engine_version      = "5.7"
  instance_class      = "db.t3.micro"
  skip_final_snapshot = true
}