module "terraform-vm" {
  source               = "github.com/PacktPublishing/Hashicorp-Infrastructure-Automation-Certification-Guide.git//chapter7/azurerm/azurerm-virtual-machine-module?ref=v0.0.1"
  rgname               = var.rgname
  location             = var.location
  custom_tags          = var.custom_tags
  vm_size              = var.vm_size
  vm_name              = var.vm_name
  admin_username       = var.admin_username
  vm_publisher         = var.vm_publisher
  vm_offer             = var.vm_offer
  vm_sku               = var.vm_sku
  vm_version           = var.vm_version
  sku_name             = var.sku_name
  vnet_name            = var.vnet_name
  address_space        = var.address_space
  subnet_name          = var.subnet_name
  nic_name             = var.nic_name
  keyvault_name        = var.keyvault_name
  keyvault_secret_name = var.keyvault_secret_name
}
resource "random_string" "string_name" {
  length  = 7
  special = false
  upper   = false
  number  = false
}
locals {
  azure_string = random_string.string_name.result
}
resource "azurerm_storage_account" "stg_account" {
  name                     = "${local.azure_string}azurestg"
  resource_group_name      = var.rgname
  location                 = var.location
  tags                     = var.custom_tags
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  depends_on               = [module.terraform-vm]
}