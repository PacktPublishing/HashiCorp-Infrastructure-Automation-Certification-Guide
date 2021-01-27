/******************************************
	webapp output
 *****************************************/
output "webapp_name" {
  description = "Web App name"
  value       = azurerm_app_service.webapp.name
}
output "webapp_id" {
  description = "Web App ID"
  value       = azurerm_app_service.webapp.id
}