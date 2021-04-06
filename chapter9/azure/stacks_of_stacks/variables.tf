#common variables
variable "tags" {
  type        = map(string)
  description = "provide tags which needs to be applied."
}
variable "create_resource_group" {
  description = "Whether to create resource group and use it for all networking resources"
  default     = false
}

variable "resource_group_name" {
  description = "A container that holds related resources for an Azure solution"
  type        = string
  default     = "terraform-lab-rg"
}

variable "location" {
  description = "The location/region to keep all resources."
  type        = string
  default     = "eastus"
}
# Storage account variables
variable "storage_account_name" {
  description = "provide storage account name"
  type        = string
}
variable "skuname" {
  description = "The SKUs supported by Microsoft Azure Storage. Valid options are Premium_LRS, Premium_ZRS, Standard_GRS, Standard_GZRS, Standard_LRS, Standard_RAGRS, Standard_RAGZRS, Standard_ZRS"
  default     = "Standard_RAGRS"
}

variable "access_tier" {
  description = "Defines the access tier for BlobStorage and StorageV2 accounts. Valid options are Hot and Cool."
  default     = "Hot"
}
variable "account_tier" {
  description = "provide account tier like Premium or Standard"
  type        = string
  default     = "Standard"
}
variable "account_replication_type" {
  description = "provide replication type like LRS, GRS etc."
  type        = string
  default     = "LRS"
}
variable "soft_delete_retention" {
  description = "provide number of days"
  default     = 30
}
variable "account_kind" {
  description = "provide account kind"
  default     = "StorageV2"
}
variable "containers_list" {
  description = "List of containers to create and their access levels."
  type        = list(object({ name = string, access_type = string }))
  default     = []
}
variable "allow_blob_public_access" {
  description = "Allow or disallow public access to all blobs or containers in the storage account."
  default     = false
}

#Webapp variables
variable "asp_config" {
  type        = map(any)
  description = "provide all the asp configuration details like kind, tier, size"
}
variable "default_documents" {
  description = "The ordering of default documents to load, if an address isn't specified."
  type        = list(string)
  default     = null
}
variable "app_config" {
  description = <<EOF

Key/Value map of AppService attributes.
NOTE that the java properties are required, set to null if not relevant
Sample settings:
app_config = {
  app_name = "terraformtestingwebapp"
  dotnet_framework_version = "v2.2"
  app_command_line = "dotnet TheBestApi.dll"
  java_version = null
  java_container = null
  java_container_version = null
}
EOF
  type        = map(any)
}

variable "ip_address" {
  description = "The ip_address variable contains the list of ip's"
  type        = list(any)
}

variable "app_settings" {
  description = <<EOF
Key/Value map of the AppService settings
Sample settings
  app_settings = {
    ASPNETCORE_HTTPS_PORT  = "443"
    WEBSITE_HTTPLOGGING_RETENTION_DAYS = "7"
  }

EOF
  type        = map(any)
  default     = {}
}
variable "connection_string" {
  description = "A List of SQL Database Connections"
  type        = list(any)
  default     = []
}
variable "use_32_bit_worker_process" {
  description = "If 32-bit workers should be used (when using an App Service Plan in the Free or Shared Tiers use_32_bit_worker_process must be set to true.)"
  default     = false
}
variable "websockets_enabled" {
  description = "Should WebSockets be enabled)"
  default     = false
}