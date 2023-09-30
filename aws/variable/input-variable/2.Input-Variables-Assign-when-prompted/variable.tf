variable "aws_region" {
  description = "aws region"
  type        = string
  default     = "us-east-1a"

}

# Input Variables Assign When Prompted
# we are not passing the default value here, it will ask for the value when we run $terraform apply command
variable "aws_count_instance" {
  description = "instance count"
  type        = number


}

variable "aws_ami_id" {
  description = "aws ami id "
  type        = string
  default     = "ami-04cb4ca688797756f"
}

variable "instance_type" {
  description = "aws instance type"
  type        = string
  default     = "t2.micro"

}

variable "aws_key_pair" {
  description = "aws key pair"
  type        = string
  default     = "ec2"

}