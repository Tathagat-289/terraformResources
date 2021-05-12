terraform {
  required_providers {
    oktaasa = {
      source = "oktadeveloper/oktaasa"
    }
  }
  required_version = ">= 0.14"
}



variable "tfmodule4" {}
variable "slmodule4" {}


resource "null_resource" "delaymodule41" {
  provisioner "local-exec" {
    command = var.tfmodule4
    interpreter = ["/bin/sleep"]
  }
}