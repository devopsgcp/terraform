# Resource Block
resource "aws_instance" "ec2demo" {
  ami           = "ami-051f7e7f6c2f40dc1" # Amazon Linux in us-east-1, update as per your region
  instance_type = "t2.micro"
  count         = 5
  tags = {
    Name = "web-${count.index}"
  }
}