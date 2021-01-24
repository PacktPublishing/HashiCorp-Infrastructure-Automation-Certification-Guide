/******************************************
	Subnet Variables
 *****************************************/
variable "subnet_name" {
  type        = string
  description = "Name of the subnet"
}

variable "vpc_id" {
  type        = string
  description = "The id of the VPC where subnet needs to be created"
}

variable "cidr_block" {
  type        = string
  description = "provide subnet range"
}
variable "custom_tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}
