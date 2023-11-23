resource "gitlab_group" "default" {
    name                              = var.group_name
    path                              = local.group_path
    description                       = var.group_description
    parent_id                         = data.gitlab_group.default.id
    visibility_level                  = var.group_visibility_level
    default_branch_protection         = var.group_default_branch_protection
    auto_devops_enabled               = var.group_auto_devops_enabled
    emails_disabled                   = var.group_emails_disabled
    lfs_enabled                       = var.group_lfs_enabled
    mentions_disabled                 = var.group_mentions_disabled
    prevent_forking_outside_group     = var.group_prevent_forking_outside_group
    project_creation_level            = var.group_project_creation_level
    request_access_enabled            = var.group_request_access_enabled
    share_with_group_lock             = var.group_share_with_group_lock
    subgroup_creation_level           = var.group_subgroup_creation_level
    require_two_factor_authentication = var.group_require_two_factor_authentication
    two_factor_grace_period           = var.group_two_factor_grace_period
}
