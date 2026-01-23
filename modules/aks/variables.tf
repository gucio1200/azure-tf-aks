variable "resource_group_name" {
  description = "Nazwa grupy zasobów, w której powstanie AKS"
  type        = string
}

variable "location" {
  description = "Lokalizacja (region) Azure"
  type        = string
}

variable "cluster_name" {
  description = "Nazwa klastra AKS"
  type        = string
}

variable "dns_prefix" {
  description = "Prefix DNS dla klastra"
  type        = string
}

variable "kubernetes_version" {
  description = "Wersja Kubernetes"
  type        = string
  default     = "1.29" # Możesz zmienić na nowszą lub użyć null dla domyślnej
}

variable "node_count" {
  description = "Początkowa liczba węzłów (nodes)"
  type        = number
  default     = 2
}

variable "vm_size" {
  description = "Rozmiar maszyny wirtualnej dla węzłów"
  type        = string
  default     = "Standard_D2_v2"
}

variable "tags" {
  description = "Tagi do przypisania do zasobów"
  type        = map(string)
  default     = {}
}
