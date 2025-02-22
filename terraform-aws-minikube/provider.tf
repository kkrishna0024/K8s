terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  
  backend "s3" {
    bucket = "prasuna-state-dev"
    key    = "minikube"
    region = "us-east-1"
    dynamodb_table = "prasuna-locking-dev"
    
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}
