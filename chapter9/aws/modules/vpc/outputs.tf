/******************************************
	VPC Code
 *****************************************/
output "vpc_id" {
  value = aws_vpc.vpc[count.index].id
}
output "vpc_arn" {
  value = aws_vpc.vpc[count.index].arn
}