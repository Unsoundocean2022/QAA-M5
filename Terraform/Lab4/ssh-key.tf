# AWS SSH Key
# ---
# Create an SSH Key Pair

resource "tls_private_key" "ssh_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "ssh_key" {
  key_name   = var.ec2_key_name
  public_key = tls_private_key.ssh_key.public_key_openssh
}

resource "local_file" "ssh_key" {
  filename             = pathexpand("~/.ssh/${var.ec2_key_name}.pem")
  file_permission      = "0600"
  content = tls_private_key.ssh_key.private_key_pem
}
