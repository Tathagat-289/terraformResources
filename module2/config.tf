
variable "tfversion" {}
variable "sleep" {
  type = number
}

terraform {
    //  required_version = ">= 0.13.0"

    required_providers {
        mysql   = ">= 1.5"
    }
}

resource "null_resource" "delaymodule2" {
  provisioner "local-exec" {
    command = var.tfversion
    interpreter = ["/bin/sleep"]
  }
}

output "version" {
  value = var.tfversion
}

output "sleepoutput" {
  value = var.tfversion
}

