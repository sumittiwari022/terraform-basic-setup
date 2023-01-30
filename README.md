# terraform-aws-template

[![Lint Status](https://github.com/tothenew/terraform-aws-template/workflows/Lint/badge.svg)](https://github.com/tothenew/terraform-aws-template/actions)
[![LICENSE](https://img.shields.io/github/license/tothenew/terraform-aws-template)](https://github.com/tothenew/terraform-aws-template/blob/master/LICENSE)
This terraform script creates:
1. VPC
2. 3 Public Subnet
3. 3 Private Subnet
4. 3 secure/db Subnets
5. Ec2 server with docker engine and make package installed. 

Copy the files to local machine and execute below commands.
```
terraform init
terraform plan
terraform apply
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 4.52.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.52.0 |
| <a name="provider_template"></a> [template](#provider\_template) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_network"></a> [network](#module\_network) | git::https://github.com/DNXLabs/terraform-aws-network.git | 1.8.5 |

## Resources

| Name | Type |
|------|------|
| [aws_iam_instance_profile.terraform_iam_profile](https://registry.terraform.io/providers/hashicorp/aws/4.52.0/docs/resources/iam_instance_profile) | resource |
| [aws_iam_role.terraform_admin_role](https://registry.terraform.io/providers/hashicorp/aws/4.52.0/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.terraform_ec2_policy](https://registry.terraform.io/providers/hashicorp/aws/4.52.0/docs/resources/iam_role_policy_attachment) | resource |
| [aws_instance.ec2_instance](https://registry.terraform.io/providers/hashicorp/aws/4.52.0/docs/resources/instance) | resource |
| [aws_security_group.tf-sg](https://registry.terraform.io/providers/hashicorp/aws/4.52.0/docs/resources/security_group) | resource |
| [aws_ami.ubuntu](https://registry.terraform.io/providers/hashicorp/aws/4.52.0/docs/data-sources/ami) | data source |
| [template_file.user_data](https://registry.terraform.io/providers/hashicorp/template/latest/docs/data-sources/file) | data source |

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_private_subnet"></a> [private\_subnet](#output\_private\_subnet) | Value of name tags of private subnets |
| <a name="output_public_subnet"></a> [public\_subnet](#output\_public\_subnet) | Value of name tags of public subnets |
| <a name="output_secure_db_subnet"></a> [secure\_db\_subnet](#output\_secure\_db\_subnet) | Value of name tags of secure db subnets |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | The id of the created vpc |
<!-- END_TF_DOCS -->

## Authors

Module managed by [TO THE NEW Pvt. Ltd.](https://github.com/tothenew)

## License

Apache 2 Licensed. See [LICENSE](https://github.com/tothenew/terraform-aws-template/blob/main/LICENSE) for full details.
