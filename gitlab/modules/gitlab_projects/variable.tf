variable "project_name" {
    description = <<HEREDOC
    Required - The name of the project.
    HEREDOC
}

variable "project_description" {
    description = <<HEREDOC
    Optional - A description of the project.
    HEREDOC
    default = ""
}

variable "visibility_level" {
    description = <<HEREDOC
    Optional - Set to public to create a public project.
    HEREDOC
    default = "private"
}


variable "branch_name_regex" {
    description = <<HEREDOC
    Optional - All branch names must match this regex.
    HEREDOC
    default = "(feature|hotfix|bugfix|improvement|develop|staging)"
}

variable "deny_delete_tag" {
  description = <<HEREDOC
    Optional - Deny deleting a tag.
    HEREDOC
    default = true
}

variable "member_check" {
  description = <<HEREDOC
    Optional - Restrict commits by author (email) to existing GitLab users.
    HEREDOC
    default = false
}

variable "prevent_secrets" {
  description = <<HEREDOC
    Optional - GitLab will reject any files that are likely to contain secrets.
    HEREDOC
    default = true
}

variable "reject_unsigned_commits" {
  description = <<HEREDOC
    Optional - Reject commit when it’s not signed through GPG.
    HEREDOC
    default = false
}

variable "reset_approvals_on_push" {
  description = <<HEREDOC
    Optional - Set to true if you want to remove all approvals 
    in a merge request when new commits are pushed to its source branch.
    HEREDOC
    default = true
}

variable "disable_overriding_approvers_per_merge_request" {
  description = <<HEREDOC
    By default, users are able to edit the approval rules 
    in merge requests. If set to true
    HEREDOC
    default = true
}

variable "merge_pipelines_enabled" {
  description = <<HEREDOC
    Optional - Enable or disable merge pipelines.
    HEREDOC
    default = true
}

variable "merge_requests_author_approval" {
  description = <<HEREDOC
    Optional - Set to true if you want to allow merge request 
    authors to self-approve merge requests.
    HEREDOC
    default = true
}

variable "merge_requests_disable_committers_approval" {
  description = <<HEREDOC
    Set to true if you want to prevent approval of 
    merge requests by merge request committers.
    HEREDOC
    default = false
}
variable "squash_option" {
    description = <<HEREDOC
    Optional - Squash commits when merge request. 
    Valid values are never, always, default_on, or default_off
    HEREDOC
    default = "default_off"
}

variable "project_branches" {
    description = <<HEREDOC
    Required - A group of variables to know branches name, 
    groups allowed to push for branches and
    users allowed to push for branches.
    HEREDOC
    default  = []

    type = list(object({
        branch_name         = string
        group_allowed_push  = optional(list(string))
        user_allowed_push   = optional(list(string))
        group_allowed_merge = optional(list(string))
    }))
}

variable "project_owner" {
    description = <<HEREDOC
    Required - The project owner
    HEREDOC
}

variable "group_membership" {
    description = <<HEREDOC
    Required - Used to give permission for teams on the project.
    HEREDOC
    
    type = list(object({
        group_access = string
        group_name = string
    }))
}
