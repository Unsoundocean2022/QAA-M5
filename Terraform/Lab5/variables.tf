# AWS Variables
# ---
# Variables for AWS

variable "ec2_ami" {
  default = "ami-0fb391cce7a602d1f"
}

variable "ec2_instance_type" {
  default = "t2.micro"
}

variable "ec2_key_name" {
  default = "EC2_AWS_KEY_terraform"
}

variable "security_groups" {
  default = "terraform-lab4-sg"
}

variable "tag_name" {
  default = "terraform-lab4"
}

variable "vpc_cidr_block" {
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr_blocks" {
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}