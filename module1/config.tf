# Define a provider block (optional, depends on your project)
provider "aws" {
  region = "us-east-1"  # Replace with your desired AWS region
}

resource "aws_instance" "example_instance" {
  ami           = "ami-067d1e60475437da2"  # Replace with your desired AMI ID
  instance_type = "t2.micro"              # Replace with your desired instance type
}
