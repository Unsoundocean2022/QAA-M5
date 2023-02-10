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
  default = "EC2_AWS_KEY"
}

variable "s3_bucket_name" {
  default = "terraform-lab2-bucket"
}
