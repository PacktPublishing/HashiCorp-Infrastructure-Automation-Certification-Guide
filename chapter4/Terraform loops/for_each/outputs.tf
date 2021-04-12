# map of resource output rather than single resource
output "all_rg" {
  value = azurerm_resource_group.example
}

# All the resource group resource ID
output "all_id" {
  value = values(azurerm_resource_group.example)[*].id
}


