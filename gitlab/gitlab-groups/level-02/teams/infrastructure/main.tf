module "infrastructure" {
    source                                  = "../../../../modules/gitlab-groups"
    group_name                              = "infrastructure"
    group_description                       = "This group contains all members of the xcoreng infrastructure team."
    group_visibility_level                  = "private"
    group_default_branch_protection         = "2"
    group_auto_devops_enabled               = false
    group_emails_disabled                   = false
    group_lfs_enabled                       = true
    group_mentions_disabled                 = false
    group_prevent_forking_outside_group     = false
    group_project_creation_level            = "maintainer"
    group_request_access_enabled            = false
    group_require_two_factor_authentication = false
    group_share_with_group_lock             = false
    group_subgroup_creation_level           = "owner"
    group_two_factor_grace_period           = "48"
    parent_group_name                       = "xcoreng/teams"
}
