resource "azurerm_resource_group" "rgname" {
  tags = {
    "environment" = "preprod"
    "costcenter"  = "C3478"
  }
}
