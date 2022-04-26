terraform {
  backend "s3" {
    bucket         = "digitalroute-terraform-state"
    key            = "digitalroute.tfstate"
    region         = "us-east-1"
    dynamodb_table = "digitalroute-terraform-state-lock-dynamodb"
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

data "aws_ssm_parameter" "workers_ami_id" {
  name            = "/aws/service/eks/optimized-ami/1.15/amazon-linux-2/recommended/image_id"
  with_decryption = false
}
