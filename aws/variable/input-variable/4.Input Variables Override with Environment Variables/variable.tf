variable "aws_region" {
  description = "aws region"
  type        = string
  default     = "us-east-1a"

}


variable "aws_count_instance" {
  description = "instance count"
  type        = number
  default = 1


}

variable "aws_ami_id" {
  description = "aws ami id "
  type        = string
  default     = "ami-04cb4ca688797756f"
}

/*Input Variables Override with Environment Variables\
# Sample
    #export TF_VAR_variable_name=value
    $ export TF_VARS_instance_type=t3.micro

    Unset enviornment 

    $ unset TF_VAR_instance_type

    */

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