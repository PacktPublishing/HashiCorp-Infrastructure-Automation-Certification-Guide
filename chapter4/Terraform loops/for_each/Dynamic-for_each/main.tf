resource "azurerm_resource_group" "example" {
  name     = "Terraform-rg"
  location = "westeurope"
}
resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  address_space       = var.address_space
  dynamic "subnet" {
    for_each = var.subnet_names
    content {
      name           = subnet.value.name
      address_prefix = subnet.value.address_prefix
    }
  }
}

# If you want you can keep these variables in a separate file:

variable "subnet_names" {
  default = {
    subnet1 = {
      name           = "subnet1"
      address_prefix = "10.0.1.0/24"
    }
    subnet2 = {
      name           = "subnet2"
      address_prefix = "10.0.2.0/24"
    }
  }
}
variable "vnet_name" {
  default = "terraform-vnet"
}
variable "address_space" {
  default = ["10.0.0.0/16"]
}
