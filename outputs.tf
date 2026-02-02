output "cluster_id" {
  description = "The Azure resource ID of the AKS cluster"
  value       = azurerm_kubernetes_cluster.this.id
}

output "cluster_name" {
  description = "The name of the created AKS cluster"
  value       = azurerm_kubernetes_cluster.this.name
}

output "kube_config_raw" {
  description = "Raw kubeconfig configuration (for use with kubectl)"
  value       = azurerm_kubernetes_cluster.this.kube_config_raw
  sensitive   = true
}

output "cluster_endpoint" {
  description = "The API server endpoint address for Kubernetes"
  value       = azurerm_kubernetes_cluster.this.kube_config[0].host
}

output "identity_principal_id" {
  description = "The Principal ID of the cluster's managed identity (for assigning permissions)"
  value       = azurerm_kubernetes_cluster.this.identity[0].principal_id
}
