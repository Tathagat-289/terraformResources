
variable "tfmodule3" {}
variable "slmodule3" {}

terraform {
  backend "local" {}
}

resource "null_resource" "delaymodule3" {
  provisioner "local-exec" {
    command = var.tfmodule3
    interpreter = ["/bin/sleep"]
  }
}

output "versionModule3" {
  value = var.tfmodule3
}

output "sleepoutputModule3" {
  value = var.slmodule3
}

output "namespace" {
  value = "cdp-qa-sanity"
}
