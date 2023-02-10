# AWS Output
# ---
# Output the Public IP of the EC2 Instance

output "ec2_instance_id" {
  value = aws_instance.ec2_instance.id
}