/******************************************
	VPC Code
 *****************************************/
output "vpc_id" {
  value = aws_vpc.vpc.*.id
}
output "vpc_arn" {
  value = aws_vpc.vpc.*.arn
}