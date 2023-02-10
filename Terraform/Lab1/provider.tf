provider "aws" {
  region     = "eu-west-2"
  secret_key = "example"
  access_key = "example"
}
resource "aws_instance" "web" {
  ami           = "ami-0fb391cce7a602d1f"
  instance_type = "t2.micro"
  key_name      = "EC2_AWS_KEY"
}