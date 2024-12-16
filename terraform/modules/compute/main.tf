variable "instance_type" {
  description = "Azure VM size"
  type        = string
}

resource "azurerm_linux_virtual_machine" "vm" {
  name                  = "example-vm"
  resource_group_name   = var.resource_group_name
  location              = var.location
  size                  = var.instance_type
  admin_username        = "adminuser"

  network_interface_ids = [azurerm_network_interface.nic.id]
  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
}