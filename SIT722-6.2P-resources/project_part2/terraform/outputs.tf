output "aks_cluster_name" {
  value = azurerm_kubernetes_cluster.aks.name
}

output "postgresql_server_name" {
  value = azurerm_postgresql_server.postgres.name
}
