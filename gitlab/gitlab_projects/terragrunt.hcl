remote_state {
  backend = "azurerm"
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite"
  }
  config = {
    resource_group_name  = "foundation"
    storage_account_name = "xcefoundation"
    container_name       = "terraform"
    key                  = "gitlab/projects/${path_relative_to_include()}"
  }
}

generate "provider" {
  path = "provider.tf"
  if_exists = "overwrite"
  contents = <<EOF
    provider "gitlab" { 
}
  EOF
}

generate "versions" {
  path = "versions.tf"
  if_exists = "overwrite"
  contents = <<EOF
    terraform {
      required_providers {
        gitlab = {
          source = "gitlabhq/gitlab"
          version = "3.18.0"
    }
  }
}
  EOF
}