terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.0" # Stable version
    }
  }

  # Use local backend - NO S3 errors
  backend "local" {
    path = "terraform.tfstate"
  }
}

provider "aws" {
  region = "eu-north-1" # Stockholm
}