terraform {
  # Wymagana minimalna wersja samego Terraform CLI
  required_version = ">= 1.5.0, < 1.9.0"

  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      # Pozwalamy na wersje 3.x (od 3.90) oraz 4.x.
      # Zapewnia to dostęp do nowych funkcji, ale blokuje potencjalną wersję 5.0 w przyszłości.
      version = ">= 3.90.0, < 5.0.0"
    }
  }
}
