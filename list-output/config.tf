variable "op_module_var" {}
variable "op_module_list_var1" {
  type    = list(string)
  default = ["us-west-1a"]
}





resource "local_file" "foo" {
  content     = "foo!"
  filename = "${path.module}/foo.bar"
}

output "op_module_output" {
  value = var.op_module_var
}

output "op_module_list_output" {
  value = var.op_module_list_var1
}