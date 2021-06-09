variable "input_module_var" {}
variable "list_var1" {
  type    = list(string)
  default = ["us-west-1a"]
}

resource "local_file" "foo" {
  content     = "foo!"
  filename = "${path.module}/foo.bar"
}

output "ip_module_output" {
  value = var.input_module_var
}

output "ip_module_list_output" {
  value = var.list_var1
}

