/******************************************
	Webapp Module Code
 *****************************************/

module "webapp" {
  source                = "github.com/PacktPublishing/Hashicorp-Infrastructure-Automation-Certification-Guide.git//chapter9/azure/modules/webapp?ref=v1.15"
  create_resource_group = var.create_resource_group
  resource_group_name   = var.resource_group_name
  location              = var.location
  app_config            = var.app_config
  ip_address            = var.ip_address
  app_settings          = var.app_settings
  connection_string     = var.connection_string
  asp_config            = var.asp_config
  default_documents     = var.default_documents
  tags                  = var.tags
}

/******************************************
	Storage Module Code
 *****************************************/
module "storage" {
  source                   = "github.com/PacktPublishing/Hashicorp-Infrastructure-Automation-Certification-Guide.git//chapter9/azure/modules/storage?ref=v1.15"
  create_resource_group    = var.create_resource_group
  resource_group_name      = var.resource_group_name
  location                 = var.location
  storage_account_name     = var.storage_account_name
  account_kind             = var.account_kind
  skuname                  = var.skuname
  tags                     = var.tags
  allow_blob_public_access = var.allow_blob_public_access
  soft_delete_retention    = var.soft_delete_retention
  containers_list          = var.containers_list
}