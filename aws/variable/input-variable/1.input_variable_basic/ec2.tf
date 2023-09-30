resource "aws_instance" "linux" {
  ami                    = var.aws_ami_id
  instance_type          = var.instance_type
  availability_zone      = var.aws_region
  key_name               = var.aws_key_pair
  count                  = 1
  user_data              = file("apache-install.sh")
  vpc_security_group_ids = [aws_security_group.allow_ssh.id, aws_security_group.allow_web.id]
  tags = {
    Name = "linux-instance"
  }

}