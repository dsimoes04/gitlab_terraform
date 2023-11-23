module "query_external_api" {
    source                     = "../../../modules/gitlab_projects"
    project_name               = "query-external-api"
    project_description        = "Repo for Query External Api"
    project_owner              = "xcoreng"
    group_membership           = [
        {
        group_name   = "software"
        group_access = "maintainer"
        }
    ]
    project_branches           = [
        {
            branch_name         = "develop" 
            group_allowed_push  = ["software"]
            user_allowed_push   = []
            group_allowed_merge = ["software"]
        },
        {
            branch_name         = "staging" 
            group_allowed_push  = ["software"]
            user_allowed_push   = []
            group_allowed_merge = ["software"]
        },
        {
            branch_name         = "main" 
            group_allowed_push  = ["software"]
            user_allowed_push   = []
            group_allowed_merge = ["software"]
        }
    ]
}