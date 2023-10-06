# Define a provider block (optional, depends on your project)
provider "aws" {
  region = "us-east-1"  # Replace with your desired AWS region
}

# Define a dummy resource
resource "null_resource" "dummy" {
  triggers = {
    always_run = timestamp()  # This trigger ensures the resource runs on every apply
  }

  provisioner "local-exec" {
    command = "echo Dummy resource created"
  }
}
