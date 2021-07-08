resource "azurerm_resource_group" "rgname" {
  #Create resource group in Azure
  name     = "Terraform-rg"
  location = var.location
  tags = {
    "environment" = "development"
    "costcenter"  = "B3478"
  }
}
variable "location" {
  type    = string
  default = "eastus"
}
output "id" {
  value = azurerm_resource_group.rgname.id
}
output "name" {
  value = azurerm_resource_group.rgname.name
}
