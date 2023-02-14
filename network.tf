module "network" {
  source      = "git::https://github.com/tothenew/terraform-aws-vpc.git?ref=v0.2.0"
  cidr_block  = "10.1.0.0/16"
  name	      = var.vpc_name
  subnet_bits = 8
}

