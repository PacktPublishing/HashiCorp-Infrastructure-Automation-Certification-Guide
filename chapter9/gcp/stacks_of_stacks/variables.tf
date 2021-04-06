variable "zone" {
  type        = string
  description = "provide zone"
}
variable "region" {
  type        = string
  description = "provide GCP region"
}
variable "project_name" {
  type        = string
  description = "provide project name"
}
variable "labels" {
  type        = map(any)
  description = "provide name of the labels"
}
/******************************************
	VPC variables
 *****************************************/

variable "project_id" {
  description = "The ID of the project where this VPC will be created"
}

variable "vpc_name" {
  description = "The name of the network being created"
}

variable "vpc_routing_mode" {
  type        = string
  default     = "GLOBAL"
  description = "The network routing mode (default 'GLOBAL')"
}

variable "vpc_description" {
  type        = string
  description = "An optional description of this resource. The resource must be recreated to modify this field."
  default     = ""
}

variable "auto_create_subnetworks" {
  type        = bool
  description = "When set to true, the network is created in 'auto subnet mode' and it will create a subnet for each region automatically across the 10.128.0.0/9 address range. When set to false, the network is created in 'custom subnet mode' so the user can explicitly connect subnetwork resources."
  default     = false
}

variable "delete_default_routes_on_create" {
  type        = bool
  description = "If set, ensure that all routes within the network specified whose names begin with 'default-route' and with a next hop of 'default-internet-gateway' are deleted"
  default     = false
}

variable "vpc_mtu" {
  type        = number
  description = "The network MTU. Must be a value between 1460 and 1500 inclusive. If set to 0 (meaning MTU is unset), the network will default to 1460 automatically."
  default     = 0
}

/******************************************
	Subnet Variables
 *****************************************/
variable "subnets" {
  type        = list(map(string))
  description = "The list of subnets being created"
}

variable "secondary_ranges" {
  type        = map(list(object({ range_name = string, ip_cidr_range = string })))
  description = "Secondary ranges that will be used in some of the subnets"
  default     = {}
}
variable "routes" {
  description = "defined routes"
  type = list(object({
    name              = string
    description       = string
    destination_range = string
    tags              = string
    next_hop_internet = bool
  }))
  default = []
}
/******************************************
	Storage Variables
 *****************************************/
variable "stg_name" {
  type        = string
  description = "name of the GCP storage"
}
variable "location" {
  type        = string
  description = "name of the location"
}
variable "force_destroy" {
  type        = bool
  description = "provide whether true or false"
  default     = true
}
variable "storage_class" {
  type        = string
  description = "Supported values include: MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE"
}