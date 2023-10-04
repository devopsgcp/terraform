# Get latest AMI ID for Amazon Linux2 OS
data "aws_ami" "awzlinuxe" {
  most_recent = true
  owners      = ["137112412989"]
  filter {
    name   = "name"
    values = ["al2023-ami-2023.2.20230920.1-kernel-6.1-x86_64"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
    
  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
  
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}
