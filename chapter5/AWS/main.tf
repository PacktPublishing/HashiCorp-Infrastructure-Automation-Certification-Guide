resource "aws_vpc" "Terraform_aws_vpc" {
  cidr_block       = var.cidr_block
  instance_tenancy = "default"
  tags = {
    Name = "Terraform_aws_vpc"
  }
}