terraform {
  required_version = ">= 0.12"
  backend "azurerm" {
    storage_account_name = "terraformstg2345"
    container_name       = "terraform"
    key                  = "terraform.tfstate"
    access_key           = "KRqtJIA0Gp4oKBsElDU7RGNw0duWLw8Nb29CZ6iyVc21QU5mV60FEWJOrUnFd8qkqnb5V2rdpOkysL73xFQHcg=="
  }
}
provider "azurerm" {
  version = "=2.20.0"
  features {}
}