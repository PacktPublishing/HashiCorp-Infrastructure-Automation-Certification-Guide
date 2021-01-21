/******************************************
	Subnet Variables
 *****************************************/
variable "project_id" {
  type        = string
  description = "The ID of the project where subnets will be created"
}

variable "vpc_name" {
  type        = string
  description = "The name of the network where subnets will be created"
}

variable "subnets" {
  type        = list(map(string))
  description = "The list of subnets being created"
}

variable "secondary_ranges" {
  type        = map(list(object({ range_name = string, ip_cidr_range = string })))
  description = "Secondary ranges that will be used in some of the subnets"
  default     = {}
}