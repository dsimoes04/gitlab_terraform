# Resources to groups
data "gitlab_group" "group_allowed_to_push" {
  for_each = toset(flatten([
    for branch in var.project_branches : [
      for group in branch.group_allowed_push : group
  ]]))
  full_path = "xcoreng/teams/${each.value}"
}

data "gitlab_user" "user_allowed_to_push" {
  for_each = toset(flatten([
    for branch in var.project_branches : [
      for user in branch.user_allowed_push : user
  ]]))
  email = "xcoreng/teams/${each.value}"
}

data "gitlab_group" "group_allowed_to_merge" {
  for_each = toset(flatten([
    for branch in var.project_branches : [
      for group in branch.group_allowed_merge : group
  ]]))
  full_path = "xcoreng/teams/${each.value}"
}

data "gitlab_group" "project_owner" {
    full_path = var.project_owner
}

data "gitlab_group" "group_membership" {
  for_each = { for team in var.group_membership : team.group_name => team }
  full_path = "xcoreng/teams/${each.key}"
}
