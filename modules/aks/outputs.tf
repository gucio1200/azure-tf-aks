output "cluster_id" {
  description = "ID zasobu klastra AKS w Azure"
  value       = azurerm_kubernetes_cluster.this.id
}

output "cluster_name" {
  description = "Nazwa utworzonego klastra AKS"
  value       = azurerm_kubernetes_cluster.this.name
}

output "kube_config_raw" {
  description = "Surowa konfiguracja kubeconfig (do użycia z kubectl)"
  value       = azurerm_kubernetes_cluster.this.kube_config_raw
  sensitive   = true
}

output "cluster_endpoint" {
  description = "Adres endpointu API serwera Kubernetes"
  # POPRAWKA: Zmiana z .0.host na [0].host
  value       = azurerm_kubernetes_cluster.this.kube_config[0].host
}

output "identity_principal_id" {
  description = "Principal ID tożsamości zarządzanej klastra (do nadawania uprawnień)"
  value       = azurerm_kubernetes_cluster.this.identity[0].principal_id
}
