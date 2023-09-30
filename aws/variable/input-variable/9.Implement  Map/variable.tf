variable "aws_region" {
  description = "aws region"
  type        = string
  default     = "us-east-1a"

}

variable "aws_count_instance" {
  description = "instance count"
  type        = number
  default     = 2


}

variable "aws_ami_id" {
  description = "aws ami id "
  type        = string
  default     = "ami-04cb4ca688797756f"
}
/*
variable "aws_instance_type" {
  description = "aws instance type"
  type        = string
  default     = "t2.micro"

}

*/
variable "aws_key_pair" {
  description = "aws key pair"
  type        = string
  default     = "ec2"

}

### implemet MAP function

variable "aws_instance_type" {
  description = "AWS Ec2 instance type"
  type        = map(string)
  default = {
    "small-apps"  = "t3.micro"
    "medium-apps" = "t3.medium"
    "big-apps"    = "t3.large"
  }

}