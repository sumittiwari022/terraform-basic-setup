module "network" {
  source      = "git::https://github.com/sumittiwari022/terraform-aws-vpc.git"
  cidr_block  = "10.1.0.0/16"
  name	      =  "${local.workspace.account_name}-${local.workspace.aws.region}-${local.workspace.project_name}"
  subnet_bits = 8
}

