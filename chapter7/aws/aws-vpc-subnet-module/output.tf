output "vpc_id" {
  value = aws_vpc.terraform-vpc.id
}

output "vpc_cidr_block" {
  value = aws_vpc.terraform-vpc.cidr_block
}