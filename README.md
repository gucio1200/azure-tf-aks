# azure-tf-aks

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.0, < 1.12.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 3.90.0, < 5.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >= 3.90.0, < 5.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_kubernetes_cluster.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | Nazwa klastra AKS | `string` | n/a | yes |
| <a name="input_dns_prefix"></a> [dns\_prefix](#input\_dns\_prefix) | Prefix DNS dla klastra | `string` | n/a | yes |
| <a name="input_kubernetes_version"></a> [kubernetes\_version](#input\_kubernetes\_version) | Wersja Kubernetes | `string` | `"1.29"` | no |
| <a name="input_location"></a> [location](#input\_location) | Lokalizacja (region) Azure | `string` | n/a | yes |
| <a name="input_node_count"></a> [node\_count](#input\_node\_count) | Początkowa liczba węzłów (nodes) | `number` | `2` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Nazwa grupy zasobów, w której powstanie AKSs | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tagi do przypisania do zasobów | `map(string)` | `{}` | no |
| <a name="input_vm_size"></a> [vm\_size](#input\_vm\_size) | Rozmiar maszyny wirtualnej dla węzłów | `string` | `"Standard_D2_v2"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cluster_endpoint"></a> [cluster\_endpoint](#output\_cluster\_endpoint) | Adres endpointu API serwera Kubernetes |
| <a name="output_cluster_id"></a> [cluster\_id](#output\_cluster\_id) | ID zasobu klastra AKS w Azure |
| <a name="output_cluster_name"></a> [cluster\_name](#output\_cluster\_name) | Nazwa utworzonego klastra AKS |
| <a name="output_identity_principal_id"></a> [identity\_principal\_id](#output\_identity\_principal\_id) | Principal ID tożsamości zarządzanej klastra (do nadawania uprawnień) |
| <a name="output_kube_config_raw"></a> [kube\_config\_raw](#output\_kube\_config\_raw) | Surowa konfiguracja kubeconfig (do użycia z kubectl) |
<!-- END_TF_DOCS -->
