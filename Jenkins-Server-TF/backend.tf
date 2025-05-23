terraform {
  backend "s3" {
    bucket         = "swiggy-app-109
    region         = "us-east-1"
    key            = "EKS/terraform.tfstate"
    dynamodb_table = "Lock-Files"
    encrypt        = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}
