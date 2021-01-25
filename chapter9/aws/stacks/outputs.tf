output "subnet_id" {
  description = "subnets ID"
  value       = module.vpc.subnet_id
}
output "s3_id" {
  description = "S3 bucket id"
  value       = module.s3.s3_id
}
output "vpc_id" {
  description = "VPC id"
  value       = module.vpc.vpc_id
}