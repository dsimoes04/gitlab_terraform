terraform {
    required_providers {
        gitlab       = {
            source   = "gitlabhq/gitlab"
            version  = ">=3.16.1"
        }
    }
    required_version = ">= 1.2"
}