# AWS EC2 Instance
# ---
# Create an EC2 Instance

resource "aws_instance" "ec2_instance" {
  ami             = var.ec2_ami
  instance_type   = var.ec2_instance_type
  subnet_id       = var.ec2_subnet_id
  key_name        = var.ec2_key_name
  tags = {
    Project = var.tag_name
  }
}
