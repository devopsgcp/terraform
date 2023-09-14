resource "aws_instance" "ignore" {
  ami               = "ami-04cb4ca688797756f"
  instance_type     = "t2.micro"
  availability_zone = "us-east-1a"
  tags = {
    Name = "my-instance"

  }
  lifecycle {
    ignore_changes = [ 
        tags,
     ]
  }
}