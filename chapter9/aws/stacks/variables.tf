/******************************************
	VPC Variables
 *****************************************/
variable "vpc_name" {
  description = "Define name of the VPC"
  type        = string
  default     = ""
}

variable "cidr_block" {
  description = "The CIDR block for the VPC. Default value is a valid CIDR, but not acceptable by AWS and should be overridden"
  type        = string
  default     = "0.0.0.0/0"
}

variable "custom_tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}
variable "enable_dns_hostnames" {
  description = "Should be true to enable DNS hostnames in the VPC"
  type        = bool
  default     = false
}

variable "enable_dns_support" {
  description = "Should be true to enable DNS support in the VPC"
  type        = bool
  default     = true
}

variable "enable_classiclink" {
  description = "Should be true to enable ClassicLink for the VPC. Only valid in regions and accounts that support EC2 Classic."
  type        = bool
  default     = null
}

variable "enable_classiclink_dns_support" {
  description = "Should be true to enable ClassicLink DNS Support for the VPC. Only valid in regions and accounts that support EC2 Classic."
  type        = bool
  default     = null
}

variable "assign_generated_ipv6_cidr_block" {
  description = "Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC. You cannot specify the range of IP addresses, or the size of the CIDR block."
  type        = bool
  default     = false
}
variable "instance_tenancy" {
  description = "provide tenancy details"
  type        = string
}
/******************************************
	Subnet Variables
 *****************************************/
variable "subnet_name" {
  type        = string
  description = "Name of the subnet"
}

variable "subnet_cidr" {
  type        = string
  description = "provide subnet range"
}
/******************************************
	Storage Variables
 *****************************************/
variable "create_bucket" {
  description = "Controls if S3 bucket should be created"
  type        = bool
  default     = true
}
variable "bucket_name" {
  type        = string
  description = "provide name of the S3 bucket"
}
variable "bucket_acl" {
  type        = string
  description = "provide ACL for the S3 bucket i.e. private, public-read etc."
  default     = "private"
}
variable "force_destroy" {
  description = "(Optional, Default:false ) A boolean that indicates all objects should be deleted from the bucket so that the bucket can be destroyed without error. These objects are not recoverable."
  type        = bool
  default     = false
}

variable "acceleration_status" {
  description = "(Optional) Sets the accelerate configuration of an existing bucket. Can be Enabled or Suspended."
  type        = string
  default     = null
}