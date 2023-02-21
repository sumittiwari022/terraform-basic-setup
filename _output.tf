
output "terraform_agent_instance_id"{
 value = module.terraform_ec2_agent.id
 description = "terraform instance id"
}

output "admin_role_arn" {
 value = module.iam_roles.iam_role_admin_arn 
 description = "admin role arn"
}

