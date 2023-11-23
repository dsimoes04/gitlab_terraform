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
        key                  = "gitlab/groups/${path_relative_to_include()}"
        subscription_id      = "98f0f30b-5551-486c-908e-70ee92dfd819"
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
        gitlab       = {
            source   = "gitlabhq/gitlab"
            version  = ">=3.16.1"
        }
    }
    required_version = ">= 1.2"
}
    EOF
}
