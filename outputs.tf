output "ec2_id" {
  value = aws_instance.web.id
}

output "subnet_id" {
  value = module.aws_vpc.subnet_id
}

output "sg_id" {
  value = module.aws_vpc.sg_id
}

output "vpc_id" {
  value = module.aws_vpc.vpc_id
}
