variable "vpc_name" {
  type        = string
  description = "vpc name"
}
variable "cidr_block" {
  type        = string
  description = "address space of the vpc"
  default     = "10.0.0.0/16"
}
variable "subnet_name" {
  type        = string
  description = "subnet name"
}
variable "region" {
  type        = string
  description = "provide region where you want to deploy resources"
}
variable "bucket_name" {
  type        = string
  description = "provide name of the S3 bucket"
}
variable "bucket_acl" {
  type        = string
  description = "provide ACL for the S3 bucket i.e. private, public-read etc."
}
variable "custom_tags" {
  type        = map(any)
  description = "provide tags which needs to be applied."

}