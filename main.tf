resource "null_resource" "default" {
  depends_on = [data.azurerm_public_ip.pip, ]
  connection {
    host     = 22
    user     = "qtdevops"
    password = "qtdevops"
  }
  provisioner "remote-exec" {
    inline = [
      "sudo apt update",
      "sudo apt install apache2 -y"
      ]
  }
}