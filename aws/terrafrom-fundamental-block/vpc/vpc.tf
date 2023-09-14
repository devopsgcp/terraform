resource "aws_vpc" "myvpc" {
  cidr_block       = "10.0.0.0/16"
  tags = {
    Name = "main"
  }
}

# Resource Block to Create VPC in us-west-1
resource "aws_vpc" "myvpc-west-vpc" {
  cidr_block       = "10.0.0.0/16"
  provider = aws.aws-west-1
  tags = {
    Name = "main-west"
  }
}

/*
Additional Note: 
provider = <PROVIDER NAME>.<ALIAS>  # This is a Meta-Argument from Resources Section nothing but a Special Argument
*/