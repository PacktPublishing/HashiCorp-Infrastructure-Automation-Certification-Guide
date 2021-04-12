terraform {
  required_version = ">= 0.13"
  backend "azurerm" {
    storage_account_name = "terraformstg2345"
    container_name       = "terraform"
    key                  = "terraform.tfstate"
    access_key           = "KRqtJIA0Gp4oKBsElD.."
  }
}
provider "azurerm" {
  version = "=2.55.0"
  features {}
}