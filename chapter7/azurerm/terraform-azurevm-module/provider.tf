 terraform {
  required_version = ">= 1.0" 
  backend "azurerm" {
  storage_account_name = "terraformstg2345"
    container_name       = "terraform"
    key                  = "terraform.tfstate"
    }
}
provider "azurerm" {
  version = "=2.55.0"
  features {}
}