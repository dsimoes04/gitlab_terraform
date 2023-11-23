# Creating a project on GitLab
resource "gitlab_project" "default" {
  name                             = var.project_name
  description                      = var.project_description
  visibility_level                 = var.visibility_level
  namespace_id                     = data.gitlab_group.project_owner.group_id
  default_branch                   = "main"
  squash_option                    = var.squash_option
  initialize_with_readme           = true
  remove_source_branch_after_merge = true
  merge_pipelines_enabled          = var.merge_pipelines_enabled

  push_rules {
    branch_name_regex             = local.branch_regex
    deny_delete_tag               = var.deny_delete_tag
    member_check                  = var.member_check
    prevent_secrets               = var.prevent_secrets
    reject_unsigned_commits       = var.reject_unsigned_commits
  }
}