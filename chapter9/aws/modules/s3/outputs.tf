/******************************************
	S3 Bucket Output
 *****************************************/
output "s3_id" {
  value = aws_s3_bucket.s3_bucket.*.id
}
output "bucket_domain_name" {
  value = aws_s3_bucket.s3_bucket.*.bucket_domain_name
}