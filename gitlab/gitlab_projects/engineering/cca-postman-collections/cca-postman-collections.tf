module "cca_postman_collections" {
    source                     = "../../../modules/gitlab_projects"
    project_name               = "cca-postman-colections"
    project_description        = "Repo for CCA Postman Collections"
    project_owner              = "xcoreng"
    group_membership           = [
        {
        group_name   = "software"
        group_access = "maintainer"
        }
    ]
    project_branches           = [
        {
            branch_name         = "main" 
            group_allowed_push  = ["software"]
            user_allowed_push   = []
            group_allowed_merge = ["software"]
        }
    ]
}