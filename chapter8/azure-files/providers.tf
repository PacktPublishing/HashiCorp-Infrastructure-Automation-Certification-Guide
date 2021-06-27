terraform {
  required_version = ">= 1.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.55.0"
    }
  }
  backend "azurerm" {
    storage_account_name = "terraformstg2345"
    container_name       = "terraform"
    key                  = "terraform.tfstate"
    access_key           = "KRqtJIA0Gp4oKBsElDU7.."
  }
}
provider "azurerm" {
  features {}
}