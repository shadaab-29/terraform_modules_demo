terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.region
}

# Call network module
module "aws_vpc" {
  source = "./aws_vpc"
}

# EC2 Instance
resource "aws_instance" "web" {
  ami                    = var.ami
  instance_type          = var.instance_type
  subnet_id              = module.aws_vpc.subnet_id
  vpc_security_group_ids = [module.aws_vpc.sg_id]

  tags = {
    Name = "MyTerraformInstance"
  }
}
