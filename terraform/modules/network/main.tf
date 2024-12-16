variable "cidr_block" {
  description = "CIDR block for the VNet"
  type        = string
}

resource "azurerm_virtual_network" "vnet" {
  name                = "example-vnet"
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = [var.cidr_block]
}