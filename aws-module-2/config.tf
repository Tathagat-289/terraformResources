#variable "access_key" {}
#
#variable "secret_key" {}
#
#
variable "tag" {
  default = "terragrunt-bugbash"
}

provider "aws" {
#  access_key = var.access_key
#  secret_key = var.secret_key
  region = "eu-north-1"
}

resource "aws_instance" "ec2_instance_test" {
  ami           = "ami-0bb29480f5276e843"
  instance_type = "t2.nano"
  tags = {
    Name = var.tag
  }
}

resource "aws_instance" "ec2_instance_test_new" {
  ami           = "ami-06f913a82bea1dc7a"
  instance_type = "t2.nano"
  tags = {
    Name = var.tag
  }
}


#terraform {
#  backend "s3" {
#    # put access_key and secret key from backendconfig file
#    # Replace this with your bucket name!
#    bucket         = "terraform-state-tathagat-test"
#    region         = "us-east-1"
#    key = "tf/terraform.tfstate"
#    # Replace this with your DynamoDB table name!
#    encrypt        = true
#  }
#}


output "tag" {
  value = var.tag
}
