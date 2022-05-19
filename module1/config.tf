resource "local_file" "foomodule1" {
    content     = "foo2!"
    filename = "${path.module}/foo1.bar"
}
