resource "aws_instance" "dev-instance" {
  ami                    = "ami-0f1ee917b10382dea"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.my-subnet.id
  key_name               = "terraform"
  user_data              = file("apache-install.sh")
  vpc_security_group_ids = [aws_security_group.dev-security.id]
}