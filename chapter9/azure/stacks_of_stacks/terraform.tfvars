create_resource_group = true
resource_group_name   = "Terraform-test-rg"
location              = "eastus"
tags = {
  Environment = "prod"
  Owner       = "Azure-Terraform"
}
storage_account_name     = "tf"
skuname                  = "Standard_LRS"
allow_blob_public_access = true
soft_delete_retention    = 30
account_kind             = "StorageV2"
containers_list = [
  { name = "terraformcontainer1", access_type = "private" },
  { name = "terraformcontainer2", access_type = "blob" },
  { name = "terraformcontainer3", access_type = "container" }
]
asp_config = {
  app_service_plan_name = "terraform-test-asp"
  kind                  = "Windows"
  tier                  = "PremiumV2"
  size                  = "P3v2"
  capacity              = "1"
}
websockets_enabled = "true"
app_config = {
  app_name                 = "terraformwebapp02343"
  dotnet_framework_version = null
  always_on                = "true"
  java_version             = "1.8"
  java_container           = "Tomcat"
  java_container_version   = "9.0.0"
}
app_settings = {
  ASPNETCORE_ENVIRONMENT             = "DEV"
  ASPNETCORE_HTTPS_PORT              = "443"
  WEBSITE_HTTPLOGGING_RETENTION_DAYS = "7"
}
connection_string = [{
  name  = "Database"
  type  = "SQLServer"
  value = "Server=tcp:sqlservername,1433;Database=terraform-lab-db;"
}]
ip_address = [{
  ip_address = "0.0.0.0/0"
}]
default_documents = ["index.html", "default.html"]