terraform {
  backend "s3" {
    bucket         = "digitalroute-vpc-terraform-state"
    key            = "digitalroute-vpc.tfstate"
    region         = "us-east-1"
    dynamodb_table = "digitalroute-vpc-terraform-state-lock-dynamodb"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.70.0"
    }
  }
  required_version = "~> 1.0.9"
}

provider "aws" {
  region = var.aws_region
}
