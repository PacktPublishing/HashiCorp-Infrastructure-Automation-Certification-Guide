resource "azurerm_resource_group" "terraform-rg" {
  name     = var.rgname
  location = var.rglocation
    tags = {
      "environment" = "test"
      "costcenter" = "terraform-sentinel"
    }
}