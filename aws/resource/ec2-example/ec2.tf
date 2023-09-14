resource "aws_instance" "my-ec2-instance" {
  ami               = "ami-0f1ee917b10382dea"
  instance_type     = "t2.micro"
  availability_zone = "us-west-1a"
  tags = {
    Name = "my-instance"
  }


}