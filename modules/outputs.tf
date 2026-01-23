output "cluster_id" {
  value = azurerm_kubernetes_cluster.this.id
}

output "cluster_name" {
  value = azurerm_kubernetes_cluster.this.name
}

output "kube_config_raw" {
  value     = azurerm_kubernetes_cluster.this.kube_config_raw
  sensitive = true
}

output "cluster_endpoint" {
  value = azurerm_kubernetes_cluster.this.kube_config.0.host
}

output "identity_principal_id" {
  description = "Principal ID tożsamości zarządzanej klastra (do nadawania uprawnień)"
  value       = azurerm_kubernetes_cluster.this.identity[0].principal_id
}
