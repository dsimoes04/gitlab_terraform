resource "gitlab_project_share_group" "default" {
  for_each     = { for team in var.group_membership : team.group_name => team }
  project_id   = gitlab_project.default.id
  group_id     = data.gitlab_group.group_membership[each.key].group_id
  group_access = each.value.group_access
}