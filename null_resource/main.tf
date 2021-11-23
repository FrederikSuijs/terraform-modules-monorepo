resource "null_resource" "my_resource" {
  triggers = {
    build_number = timestamp()
  }

  provisioner "local-exec" {
    command = "echo Module null_resource: ${var.name} ${var.boolean}"
  }
}
