module "terraform-aws-vpc" {
  source      = "github.com/PacktPublishing/Hashicorp-Infrastructure-Automation-Certification-Guide.git//chapter7/aws/aws-vpc-subnet-module?ref=v1.0.0"
  vpc_name    = var.vpc_name
  cidr_block  = var.cidr_block
  subnet_name = var.subnet_name
}
resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.bucket_name
  acl    = var.bucket_acl
  tags   = var.custom_tags
}