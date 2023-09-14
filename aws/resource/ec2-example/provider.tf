terraform {
  required_version = "= 1.5.6"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.16.1"
    }
  }
}

provider "aws" {
  region  = "us-west-1"
  profile = "default"

}

