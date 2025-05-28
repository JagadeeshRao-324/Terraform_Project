provider "azurerm" {
   features {}
}

resource "azurerm_resource_group" "tf-rg" {
name     = var.rgname
location = var.location
}

resource "azurerm_virtual_network" "vnet" {
name                = var.vnetname
resource_group_name = var.rgname
location            = var.location
address_space       = var.addr_space
}

resource "azurerm_subnet" "subnet" {
name                 = var.subnetname
resource_group_name  = var.rgname
virtual_network_name = azurerm_vitual_network.vnet.name
address_prefix       = var.subnet_prefix
}

