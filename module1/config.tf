# Define a provider block (optional, depends on your project)
provider "aws" {
  region = "eu-north-1"  # Replace with your desired AWS region
}

resource "aws_instance" "example_instance" {
  ami           = "ami-0c55b159cbfafe1f0"  # Replace with your desired AMI ID
  instance_type = "t2.micro"              # Replace with your desired instance type
  key_name      = "your-key-pair-name"    # Replace with your key pair name
}
