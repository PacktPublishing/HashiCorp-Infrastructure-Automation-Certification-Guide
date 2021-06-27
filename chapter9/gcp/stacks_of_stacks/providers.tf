terraform {
  required_version = ">= 1.0"
  required_providers {
    google = {
      version = "~> 3.0"
    }
  }
}
provider "google" {
  project     = var.project_name
  region      = var.region
  zone        = var.zone
}