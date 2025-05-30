output "aks_cluster" {
value = azurerm_kubernetes_cluster.aks.name
}

output "subnet_id" {
value = azurerm_subnet.subnet.id
}
