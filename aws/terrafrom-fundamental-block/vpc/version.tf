# terraform block
terraform {
  required_version = "= 1.5.6"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"

    }
  }
}

# provider block

provider "aws" {
    region = "us-east-1"
    profile = "default"
  
}

#provider block 2
provider "aws" {
    region = "us-west-1"
    profile = "default"
    alias = "aws-west-1"
  
}
/*
Note-1:  AWS Credentials Profile (profile = "default") configured on your local desktop terminal  
$HOME/.aws/credentials
*/