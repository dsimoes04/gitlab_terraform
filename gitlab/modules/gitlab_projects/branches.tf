# Creating branches on Gitlab
resource "gitlab_branch" "default" {
    for_each = setsubtract([
        for branch in var.project_branches : branch.branch_name], ["main"])
  name              = each.key
  ref               = "main"
  project           = gitlab_project.default.id

  depends_on = [
    gitlab_project.default
  ]

  lifecycle {
    ignore_changes = [
      ref,
    ]
  }
}

# Example using dynamic block
resource "gitlab_branch_protection" "default" {
    for_each = {
        for branch in var.project_branches : branch.branch_name => branch
    }
    branch                 = each.key
    project                = gitlab_project.default.id
    push_access_level      = "developer"
    merge_access_level     = "developer"
    unprotect_access_level = "maintainer"
    
    dynamic "allowed_to_push" {
    for_each = toset(each.value.group_allowed_push)
    content {
      group_id = data.gitlab_group.group_allowed_to_push[allowed_to_push.value].id
    }
  }

    dynamic "allowed_to_push" {
    for_each = toset(each.value.user_allowed_push)
    content {
      user_id  = data.gitlab_user.user_allowed_to_push[allowed_to_push.value].id
    }
  }

    dynamic "allowed_to_merge" {
    for_each = toset(each.value.group_allowed_merge)
    content {
      group_id  = data.gitlab_group.group_allowed_to_merge[allowed_to_merge.value].id
    }
  }
  
  depends_on = [
    gitlab_branch.default,
  ]
}