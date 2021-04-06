/******************************************
	Webapp Variables
 *****************************************/
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
variable "asp_config" {
  type        = map(any)
  description = "provide all the asp configuration details like kind, tier, size"
  default     = {}
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

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

variable "use_32_bit_worker_process" {
  description = "If 32-bit workers should be used (when using an App Service Plan in the Free or Shared Tiers use_32_bit_worker_process must be set to true.)"
  default     = false
}
variable "websockets_enabled" {
  description = "Should WebSockets be enabled)"
  default     = false
}