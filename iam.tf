module "iam_roles" {
    source     = "git::https://github.com/sumittiwari022/terraform-aws-identity.git"
    project_name_prefix = "${local.workspace.account_name}-${local.workspace.aws.region}-${local.workspace.project_name}"
}
