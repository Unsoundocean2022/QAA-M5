# AWS Provider
# ---
# Initial Provider Configuration for AWS

terraform {
  required_version = ">= 0.14"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.38.0"
    }
  }
}

provider "aws" {
  region     = "eu-west-2"
  secret_key = var.secret_key
  access_key = var.access_key
}
