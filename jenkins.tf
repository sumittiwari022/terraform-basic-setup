module "ec2-jenkins" {
  source               = "git::https://github.com/tothenew/terraform-aws-jenkins.git"
  vpc_id               = data.aws_vpc.selected.id
  subnet_ids           = ["${data.aws_subnets.public.ids[0]}"]
}
