/******************************************
	Subnet Output
 *****************************************/
output "subnet_id" {
  value       = aws_subnet.subnet.id
  description = "id of the AWS subnet"
}
output "subnet_arn" {
  value       = aws_subnet.subnet.arn
  description = "The arn of the subnet"
}