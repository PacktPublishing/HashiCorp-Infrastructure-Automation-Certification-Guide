resource "azurerm_resource_group" "example" {
  for_each = toset(var.rg_names)
  name     = each.value
  location = "westeurope"
}
