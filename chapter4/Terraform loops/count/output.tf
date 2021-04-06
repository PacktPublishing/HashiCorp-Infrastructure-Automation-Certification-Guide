# To see output of the specific resource group resource id you can define

output "rg_id" {
  value       = azurerm_resource_group.example[0].id
  description = "The Id of the resource group"
}

# To see all the output of the resource group resource id you can use following code block

output "All_rg_id" {
  value       = azurerm_resource_group.example[*].id
  description = "The Id of all the resource group"
}
