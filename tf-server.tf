module "terraform_ec2_agent" {
  source              = "git::https://github.com/tothenew/terraform-aws-agent.git"
  vpc_id              = data.aws_vpc.selected.id
  subnet_id           = data.aws_subnets.public.ids[0]
}

