# AWS Security Group
# ---
# Create a Security Group

resource "aws_security_group" "security_group" {
  name        = var.security_groups
  description = "Security Group for Terraform Lab 4"

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Project = var.tag_name
  }
}
