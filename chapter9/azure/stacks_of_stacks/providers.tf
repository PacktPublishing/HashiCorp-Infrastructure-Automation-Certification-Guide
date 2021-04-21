terraform {
  required_version = ">= 0.13"
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
    access_key           = "KRqtJIA0Gp4oKBsElD.."
  }
}
provider "azurerm" {
  features {}
}