module "network" {
  source = "git::https://github.com/DNXLabs/terraform-aws-network.git?ref=1.8.5"

  newbits             = 4
  vpc_cidr            = "10.0.0.0/16"
  name                = "vpc-common"
  multi_nat           = false
  transit_subnet      = false

  tags = {
    "CreatedBy" = "Terraform"
  }
}

