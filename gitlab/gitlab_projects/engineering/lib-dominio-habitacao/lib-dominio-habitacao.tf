module "lib_dominio_habitacao" {
    source                     = "../../../modules/gitlab_projects"
    project_name               = "lib-dominio-habitacao"
    project_description        = "Lib que servira os dominios referentes aos calculos financeiros"
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