# Generated by Terragrunt. Sig: nIlQXj57tbuaRZEa
terraform {
  backend "azurerm" {
    container_name       = "terraform"
    key                  = "gitlab/groups/level-02/teams/software"
    resource_group_name  = "foundation"
    storage_account_name = "xcefoundation"
  }
}
