module "terraform_ec2_agent" {
  source              = "git::https://github.com/tothenew/terraform-aws-agent.git"
  vpc_id              = var.tf_vpc_id
  subnet_id           = var.tf_subnet_id
}

