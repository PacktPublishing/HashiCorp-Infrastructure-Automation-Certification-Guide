data "azurerm_resource_group" "dev" {
  name = "Terraform-lab-rg"
}
resource "azurerm_app_service_plan" "dev" {
  name                = var.appserviceplan_name
  location            = data.azurerm_resource_group.dev.location
  resource_group_name = data.azurerm_resource_group.dev.name
  sku {
    tier = "Standard"
    size = "S1"
  }
}
resource "azurerm_app_service" "dev" {
  name                = var.appservice_name
  location            = data.azurerm_resource_group.dev.location
  resource_group_name = data.azurerm_resource_group.dev.name
  app_service_plan_id = azurerm_app_service_plan.dev.id
}