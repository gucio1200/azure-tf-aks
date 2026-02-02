variable "resource_group_name" {
  description = "Name of the resource group where the AKS will be created"
  type        = string
}

variable "location" {
  description = "Azure location (region)"
  type        = string
}

variable "cluster_name" {
  description = "Name of the AKS cluster"
  type        = string
}

variable "dns_prefix" {
  description = "DNS prefix for the cluster"
  type        = string
}

variable "kubernetes_version" {
  description = "Kubernetes version"
  type        = string
  default     = "1.29" # You can change to a newer version or use null for the default
}

variable "node_count" {
  description = "Initial number of nodes"
  type        = number
  default     = 2
}

variable "vm_size" {
  description = "Virtual machine size for the nodes"
  type        = string
  default     = "Standard_D2_v2"
}

variable "tags" {
  description = "Tags to assign to resources"
  type        = map(string)
  default     = {}
}
