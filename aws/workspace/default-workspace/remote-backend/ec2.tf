resource "aws_instance" "linux" {
  ami                    = data.aws_ami.awzlinuxe.id
  instance_type          = var.instance_type
  availability_zone      = var.aws_region
  key_name               = var.aws_key_pair
  count                  = terraform.workspace == "default" ? 3 : 1
  user_data              = file("apache-install.sh")
  vpc_security_group_ids = [aws_security_group.allow_ssh.id, aws_security_group.allow_web.id]
  tags = {
    Name = "web-${terraform.workspace}-${count.index}"
  }
  lifecycle {
    create_before_destroy = true
  }

}
