variable "rgname" {
  type        = string
  description = "name of resource group"
}
variable "location" {
  type        = string
  description = "location name"
}
variable "vnet_name" {
  type        = string
  description = "vnet name"
}
variable "address_space" {
  type        = list(string)
  description = "address space of the vnet"
  default     = ["10.1.0.0/16"]
}
variable "subnet_name" {
  type        = string
  description = "subnet name"
}
variable "nic_name" {
  type        = string
  description = "nic card name"
}
variable "vm_name" {
  type        = string
  description = "virtual machine name"
}
variable "vm_size" {
  type        = string
  description = "virtual machine size"
}
variable "admin_username" {
  type        = string
  description = "username"
  default     = "azureuser"
}
variable "vm_publisher" {
  type        = string
  description = "Virtual machine publisher"
}
variable "vm_offer" {
  type        = string
  description = "Virtual machine offer"
}
variable "vm_sku" {
  type        = string
  description = "Virtual machine sku"
}
variable "vm_version" {
  type        = string
  description = "Virtual machine os version"
  default     = "latest"
}
variable "keyvault_name" {
  type        = string
  description = "keyvault name"
}
variable "sku_name" {
  type        = string
  description = "keyvault sku"
}
variable "keyvault_secret_name" {
  type        = string
  description = "virtual machine secret name"
  default     = "vmpassword"
}
variable "custom_tags" {
  description = "provide tags"
}