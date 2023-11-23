resource "gitlab_project_environment" "this" {
  for_each = { for branch in var.project_branches : branch.branch_name => branch}
  project      = gitlab_project.default.id
  name         = each.value.branch_name
  #external_url = "www.example.com"

  depends_on = [
    gitlab_branch.default
  ]
}