resource "aws_instance" "linux" {
  ami                    = var.aws_ami_id
  instance_type          = var.aws_instance_type[1] # Reference Values from List in ec2-instance.tf
  availability_zone      = var.aws_region
  key_name               = var.aws_key_pair
  count                  = var.aws_count_instance
  user_data              = file("apache-install.sh")
  vpc_security_group_ids = [aws_security_group.allow_ssh.id, aws_security_group.allow_web.id]
  tags = {
    Name = "web-${count.index}"
  }
  lifecycle {
    create_before_destroy = true
  }

}
