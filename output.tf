output "vpc_id" {
value = module.network.vpc_id
}
output "secure_db_subnet" {
 value = module.network.secure_subnets[*].tags["Name"]
}
output "private_subnet" {
 value = module.network.private_subnets[*].tags["Name"]
}
output "public_subnet" {
 value = module.network.public_subnets[*].tags["Name"]
}
