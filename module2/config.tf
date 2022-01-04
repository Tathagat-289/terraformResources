
variable "tfversion" {}
variable "sleep" {}
variable "sleep" {
  type = number
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

