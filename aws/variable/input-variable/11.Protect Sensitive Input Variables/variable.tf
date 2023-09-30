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

variable "aws_instance_type" {
  description = "aws instance type"
  type        = string
  default     = "t2.micro"

}

variable "aws_key_pair" {
  description = "aws key pair"
  type        = string
  default     = "ec2"

}


# sensitive information
variable "db_user" {
  description = "This is default user for mysql DB"
  type        = string
  sensitive   = true

}

variable "db_password" {
  description = "This is default password for mysql db"
  type        = string
  sensitive   = true

}