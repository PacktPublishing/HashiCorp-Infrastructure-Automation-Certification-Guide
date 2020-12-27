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