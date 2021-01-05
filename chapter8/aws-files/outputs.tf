output "vpc_id" {
  value = module.terraform-aws-vpc.vpc_id
}
output "vpc_cidr_block" {
  value = module.terraform-aws-vpc.vpc_cidr_block
}
output "s3_id" {
  value = aws_s3_bucket.s3_bucket.id
}
output "bucket_domain_name" {
  value = aws_s3_bucket.s3_bucket.bucket_domain_name
}