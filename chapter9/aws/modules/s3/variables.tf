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

variable "custom_tags" {
  type        = map(string)
  description = "provide tags which needs to be applied."
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
