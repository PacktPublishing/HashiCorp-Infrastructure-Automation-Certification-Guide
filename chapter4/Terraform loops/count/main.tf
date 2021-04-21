# To Create Resource Group
resource "azurerm_resource_group" "example" {
  count    = 3
  name     = "Terraform-rg${count.index}"
  location = "westeurope"
}

# You can define above code by defining variable rg_names, you can refer to variable.tf file where we had defined variable.

resource "azurerm_resource_group" "example" {
  count    = length(var.rg_names)
  name     = var.rg_names[count.index]
  location = "westeurope"
}
