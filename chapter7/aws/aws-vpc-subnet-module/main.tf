resource "aws_vpc" "terraform-vpc" {
  cidr_block       = var.cidr_block
  instance_tenancy = "default"
  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "terraform-subnet" {
  vpc_id     = aws_vpc.terraform-vpc.id
  cidr_block = cidrsubnet(var.cidr_block, 8, 1)
  tags = {
    Name = var.subnet_name
  }
}