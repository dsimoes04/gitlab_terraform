variable "group_name" {
    description = <<HEREDOC
    Required - The name of this group.
    HEREDOC
}

variable "group_path" {
    description = <<HEREDOC
    Required - The path of the group.
    HEREDOC
    default = ""
}

variable "group_description" {
    description = <<HEREDOC
    Optional - The description of the group.
    HEREDOC
    default = ""
}

variable "group_visibility_level" {
    description = <<HEREDOC
    Optional - The group's visibility. Can be private, internal, or public.
    HEREDOC
    default = "private"
}

variable "group_default_branch_protection" {
    description = <<HEREDOC
    Optional - See https://docs.gitlab.com/ee/api/groups.html#options-for-default_branch_protection
    Defaults to 2. 
    HEREDOC
    default = "2"
}

variable "group_auto_devops_enabled" {
    description = <<HEREDOC
    Optional - Default to Auto DevOps pipeline for all projects within 
    this group. Defaults to false. 
    HEREDOC
    default = false
}

variable "group_emails_disabled" {
    description = <<HEREDOC
    Disable email notifications. Defaults to false.
    HEREDOC
    default = false
}

variable "group_lfs_enabled" {
    description = <<HEREDOC
    Optional - Enable/disable Large File Storage (LFS) for the projects in
    this group. Defaults to true.
    HEREDOC
    default = true
}

variable "group_mentions_disabled" {
    description = <<HEREDOC
    Optional - Disable the capability of a group from getting mentioned.
    Defaults to false. 
    HEREDOC
    default = false
}

variable "group_prevent_forking_outside_group" {
    description = <<HEREDOC
    Optional - When enabled, users can not fork projects from this group to
    external namespaces. Defaults to false.
    HEREDOC
    default = false
}

variable "group_project_creation_level" {
    description = <<HEREDOC
    Optional - Determine if developers can create projects in the group.
    Defaults to maintainer. 
    HEREDOC
    default = "maintainer"
}

variable "group_request_access_enabled" {
    description = <<HEREDOC
    Optional - Allow users to request member access.
    Defaults to false. 
    HEREDOC
    default = false
}

variable "group_require_two_factor_authentication" {
    description = <<HEREDOC
    Optional - Require all users in this group to setup Two-factor 
    authentication. Defaults to false.
    HEREDOC
    default = false
}

variable "group_share_with_group_lock" {
    description = <<HEREDOC
    Optional - Prevent sharing a project with another group within this group.
    Defaults to false. 
    HEREDOC
    default = false
}

variable "group_subgroup_creation_level" {
    description = <<HEREDOC
    Optional - Allowed to create subgroups. Defaults to owner.
    HEREDOC
    default = "owner"
}

variable "group_two_factor_grace_period" {
    description = <<HEREDOC
    Optional - Time before Two-factor authentication is enforced (in hours).
    Defaults to 48.
    HEREDOC
    default = "48"
}

variable "parent_group_name" {
    description = <<HEREDOC
    Optional - Name of the parent group (creates a nested group).
    HEREDOC
    default = ""
}
