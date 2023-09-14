resource "aws_instance" "my-ec2-instance-1" {
  ami               = "ami-04cb4ca688797756f"
  instance_type     = "t2.micro"
  availability_zone = "us-east-1a"
  tags = {
    Name = "my-instance"

  }
   /* 
  lifecycle {
    prevent_destroy = true
  }
*/
}