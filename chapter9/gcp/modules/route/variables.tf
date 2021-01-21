/******************************************
	Routes Variables
 *****************************************/
variable "project_id" {
  type        = string
  description = "The ID of the project where the routes will be created"
}

variable "vpc_name" {
  type        = string
  description = "The name of the network where routes will be created"
}

variable "routes" {
  type        = list(map(string))
  description = "List of routes being created in this VPC"
  default     = []
}
