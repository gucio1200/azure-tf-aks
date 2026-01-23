resource "azurerm_kubernetes_cluster" "this" {
  name                = var.cluster_name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix
  kubernetes_version  = var.kubernetes_version

  default_node_pool {
    name                 = "default"
    node_count           = var.node_count
    vm_size              = var.vm_size
    auto_scaling_enabled = true   # Włączamy autoskalowanie
    min_count            = 1      # Minimum węzłów
    max_count            = 5      # Maksimum węzłów
    vnet_subnet_id       = null   # Tutaj można dodać ID podsieci, jeśli integrujesz z VNet
  }

  # Używamy Managed Identity zamiast Service Principal (bezpieczniej)
  identity {
    type = "SystemAssigned"
  }

  network_profile {
    network_plugin    = "azure"
    load_balancer_sku = "standard"
    network_policy    = "azure"
  }

  tags = var.tags

  lifecycle {
    ignore_changes = [
      default_node_pool[0].node_count # Ignorujemy zmiany liczby węzłów przez autoskalowanie
    ]
  }
}
