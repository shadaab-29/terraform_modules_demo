variable "region" {
  description = "AWS Region"
  type        = string
  default     = "ap-south-1"
}

variable "ami" {
  description = "AMI ID for EC2 instance"
  type        = string
  default     = "ami-0dee22c13ea7a9a67" # Amazon Linux 2 Free Tier in ap-south-1
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}
