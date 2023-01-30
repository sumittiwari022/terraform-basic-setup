data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_iam_role" "terraform_admin_role" {
  name = "terraform-role"
  assume_role_policy = <<POLICY
  {
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Principal": {
                "Service": "ec2.amazonaws.com"
            },
            "Action": "sts:AssumeRole"
        }
    ]
  }
  POLICY
}

resource "aws_iam_role_policy_attachment" "terraform_ec2_policy" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  role       = aws_iam_role.terraform_admin_role.name
}

resource "aws_iam_instance_profile" "terraform_iam_profile" {
  name = "terraform_instance_profile"
  role = aws_iam_role.terraform_admin_role.name
}

//security group
resource "aws_security_group" "tf-sg" {
  vpc_id = module.network.vpc_id
  ingress {
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
    cidr_blocks = [module.network.cidr_block]
  }
  egress {
    from_port   = 0
    protocol    = "all"
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
}
data "template_file" "user_data" {
  template = file("${user_data.sh")
}

resource "aws_instance" "ec2_instance" {
 depends_on = [
   module.network
]
  ami             = data.aws_ami.ubuntu.id
  instance_type   = "t3.small"
  subnet_id = module.network.public_subnet_ids[0]
  iam_instance_profile   = aws_iam_instance_profile.terraform_iam_profile.name
  vpc_security_group_ids = [aws_security_group.tf-sg.id]

  tags = {
    Name = "Terraform Server"
  }
  user_data_base64        = base64encode(data.template_file.user_data.rendered)
}


