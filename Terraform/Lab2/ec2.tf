# AWS EC2 Instance
# ---
# Create an EC2 Instance

resource "aws_instance" "ec2_instance" {
  ami           = var.ec2_ami
  instance_type = var.ec2_instance_type
  key_name      = var.ec2_key_name
}
