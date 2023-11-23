resource "gitlab_project_level_mr_approvals" "default" {
  project_id                                     = gitlab_project.default.id
  reset_approvals_on_push                        = var.reset_approvals_on_push
  disable_overriding_approvers_per_merge_request = var.disable_overriding_approvers_per_merge_request
  merge_requests_author_approval                 = var.merge_requests_author_approval
  merge_requests_disable_committers_approval     = var.merge_requests_disable_committers_approval
}