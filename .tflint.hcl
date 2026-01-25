config {
  # Enable the Azure provider plugin
  plugin "azurerm" {
    enabled = true
    version = "0.29.0" # You can pin to a specific version
    source  = "github.com/terraform-linters/tflint-ruleset-azurerm"
  }
}

# --------------------------------------------------------------------
# Rules from your existing .pre-commit-config.yaml
# --------------------------------------------------------------------
rule "terraform_deprecated_interpolation" { enabled = true }
rule "terraform_deprecated_index" { enabled = true }
rule "terraform_unused_declarations" { enabled = true }
rule "terraform_comment_syntax" { enabled = true }
rule "terraform_documented_outputs" { enabled = true }
rule "terraform_documented_variables" { enabled = true }
rule "terraform_typed_variables" { enabled = true }
rule "terraform_module_pinned_source" { enabled = true }
rule "terraform_naming_convention" { enabled = true }
rule "terraform_required_version" { enabled = true }
rule "terraform_required_providers" { enabled = true }
rule "terraform_standard_module_structure" { enabled = true }
rule "terraform_workspace_remote" { enabled = true }

# --------------------------------------------------------------------
# Recommended: Enable all default Azure rules
# --------------------------------------------------------------------
# This enables all rules from the "azurerm" plugin.
# You can disable specific ones if needed.
# For example:
# rule "azurerm_storage_account_enforce_https" { enabled = false }
# --------------------------------------------------------------------
rule "azurerm_*" {
  enabled = true
}
