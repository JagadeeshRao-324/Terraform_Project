
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
address_prefixes     = var.subnet_prefix
}

resource "azurerm_kubernetes_cluster" "aks" {
name                = var.aksname
resource_group_name = var.rgname
dns_prefix          = var.aksname
kubernetes_version  = 1.31.0

default_node_pool {
  name           = "nodepool"
  vm_size        = "Standard_DS2_v2"
  node_count     = 2
  vnet_subnet_id = azurerm_subnet.subnet.id
 }

identity {
  type = "SystemAssigned"
}

network_profile {
  network_plugin = "azure"
}
}






























