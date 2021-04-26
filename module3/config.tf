
variable "tfmodule3" {}
variable "slmodule3" {}

variable "cluster" {
  default = "us-central1-a/harness-test"
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

output "clusterName" {
  value = var.cluster
}

