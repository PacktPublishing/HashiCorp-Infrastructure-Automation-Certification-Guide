output "subnet_id" {
  description = "subnets ID"
  value       = module.subnet.subnet_id
}
output "s3_id" {
  description = "S3 bucket id"
  value       = module.storage.s3_id
}
output "vpc_id" {
  description = "VPC id"
  value       = module.vpc.vpc_id
}