# Generated by Terragrunt. Sig: nIlQXj57tbuaRZEa
terraform {
  backend "azurerm" {
    container_name       = "terraform"
    key                  = "gitlab/projects/engineering/cca-postman-collections"
    resource_group_name  = "foundation"
    storage_account_name = "xcefoundation"
  }
}
