# AWS EC2 Variables
# ---
# Variables for AWS

variable "ec2_ami" {
  default = "ami-0fb391cce7a602d1f"
}

variable "ec2_instance_type" {
  default = "t2.micro"
}

variable "tag_name" {
  default = "terraform_lab6"
}

variable "ec2_subnet_id" {
  default = ""
  type = string
}