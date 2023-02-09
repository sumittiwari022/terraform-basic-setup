output "vpc_id" {
value = module.network.vpc_id
description = "The id of the created vpc"
}
output "secure_db_subnet" {
 value = module.network.secure_subnets[*].tags["Name"]
 description = "Value of name tags of secure db subnets"
}
output "private_subnet" {
 value = module.network.private_subnets[*].tags["Name"]
 description = "Value of name tags of private subnets"
}
output "public_subnet" {
 value = module.network.public_subnets[*].tags["Name"]
 description = "Value of name tags of public subnets"
}

