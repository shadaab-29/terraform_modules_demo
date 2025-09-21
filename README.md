# terraform_modules_demo

This project contains terraform module demonstration 
=======

This project demonstrates the use of **Terraform modules** to create AWS infrastructure, including a VPC, subnet, security group, and an EC2 instance. It’s designed to be simple, reusable, and free-tier friendly.

---

## Project Structure

terraform_modules_demo/
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars.example
├── aws_vpc/
│ ├── main.tf
│ ├── variables.tf
│ └── outputs.tf

- `main.tf` – Root Terraform configuration that calls the VPC module and creates an EC2 instance.  
- `variables.tf` – Variables used in the root module.  
- `outputs.tf` – Outputs from the root module (e.g., VPC ID, Subnet ID, Security Group ID).  
- `terraform.tfvars.example` – Example file for variable values. Copy it to `terraform.tfvars` and customize before running.  
- `aws_vpc/` – Child module folder to create a VPC, subnet, and security group.

---

## Prerequisites

- Terraform v1.5+ installed
- AWS account with access key and secret key
- AWS CLI configured or environment variables set:


export AWS_ACCESS_KEY_ID="your-access-key"
export AWS_SECRET_ACCESS_KEY="your-secret-key"
export AWS_DEFAULT_REGION="ap-south-1"
Setup & Usage

1. Clone the repository
git clone "repo_url"
cd terraform_modules_demo

2. Initialize Terraform
terraform init

3. Copy example variables file and edit
cp terraform.tfvars.example terraform.tfvars
# Edit terraform.tfvars with your preferred values

4. Preview the execution plan
terraform plan

5. Apply the configuration
terraform apply

Type yes when prompted to confirm. Terraform will create:

VPC

Subnet

Internet Gateway

Route Table & Association

Security Group

EC2 Instance

6. Destroy resources (optional)
terraform destroy


Author

Your Name – Your GitHub shadaab-29



