/******************************************
	S3 Bucket Code
 *****************************************/
resource "aws_s3_bucket" "s3_bucket" {
  count  = var.create_s3 ? 1 : 0
  bucket = var.bucket_name
  acl    = var.bucket_acl
  tags   = var.custom_tags
}
resource "aws_s3_bucket" "this" {
  count               = var.create_bucket ? 1 : 0
  bucket              = var.bucket_name
  bucket_prefix       = var.bucket_prefix
  acl                 = var.bucket_acl
  force_destroy       = var.force_destroy
  acceleration_status = var.acceleration_status
  request_payer       = var.request_payer
  tags                = var.custom_tags
}