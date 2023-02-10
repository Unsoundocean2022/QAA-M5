# AWS Module
# ---
# Create an AWS Module

provider "aws" {
  region     = var.region
  secret_key = var.secret_key
  access_key = var.access_key
}

module "ec2_instance" {
  source    = "./EC2"
  # key_name  = var.ec2_key_name
}

module "ec2_instance_2" {
  source    = "./EC2"
  # key_name  = var.ec2_key_name
}

