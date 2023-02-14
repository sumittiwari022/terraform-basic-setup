
output "terraform_agent_instance_id"{
 value = module.terraform_ec2_agent.id
 description = "terraform instance id"
}

