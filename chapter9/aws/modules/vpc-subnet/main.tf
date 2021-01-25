/******************************************
	VPC Code
 *****************************************/
resource "aws_vpc" "vpc" {
  cidr_block                       = var.cidr_block
  instance_tenancy                 = var.instance_tenancy
  enable_dns_hostnames             = var.enable_dns_hostnames
  enable_dns_support               = var.enable_dns_support
  enable_classiclink               = var.enable_classiclink
  enable_classiclink_dns_support   = var.enable_classiclink_dns_support
  assign_generated_ipv6_cidr_block = var.assign_generated_ipv6_cidr_block
  tags = merge(
    {
      "Name" = format("%s", var.vpc_name)
    },
    var.custom_tags,
  )
}
/******************************************
	Subnet Code
 *****************************************/
resource "aws_subnet" "subnet" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = var.subnet_cidr
  tags = merge(
    {
      "Name" = format("%s", var.subnet_name)
    },
    var.custom_tags,
  )
}