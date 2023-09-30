variable "aws_region" {
  description = "aws region"
  type        = string
  default     = "us-east-1a"

}

/*
variable "aws_count_instance" {
  description = "instance count"
  type        = number
  default     = 2


}
*/
#Implement Validation Rule for ec2_ami_id variable
variable "aws_ami_id" {
  description = "Ec2 instance MAI id "
  type        = string
  default     = "ami-04cb4ca688797756f"
  validation {
    condition     = length(var.aws_ami_id) > 4 && substr(var.aws_ami_id, 0, 4) == "ami-"
    error_message = "The ec2_ami_id value must be a valid AMI id, starting with \"ami-\"."
  }

}
/*
variable "aws_ami_id" {
  description = "aws ami id "
  type        = string
  default     = "ami-04cb4ca688797756f"
}

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