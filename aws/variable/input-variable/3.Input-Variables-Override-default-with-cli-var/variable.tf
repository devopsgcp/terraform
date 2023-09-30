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


/*override default variable using '-var" commands
# example:
  # # Option-1 (Always provide -var for both plan and apply)
# Review the terraform plan
terraform plan -var="ec2_instance_type=t3.large" -var="ec2_instance_count=1"

# Create Resources (optional)
terraform apply -var="ec2_instance_type=t3.large" -var="ec2_instance_count=1"

# Option-2 (Generate plan file with -var and use that with apply)
# Generate Terraform plan file
terraform plan -var="ec2_instance_type=t3.large" -var="ec2_instance_count=1" -out v3out.plan

# Create / Deploy Terraform Resources using Plan file
terraform apply v3out.plan 
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