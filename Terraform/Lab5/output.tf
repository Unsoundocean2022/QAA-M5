# AWS Output
# ---
# Output the Public IP of the EC2 Instance

output "vm_public_ip" {
  value = aws_instance.ec2_instance.public_ip
}
