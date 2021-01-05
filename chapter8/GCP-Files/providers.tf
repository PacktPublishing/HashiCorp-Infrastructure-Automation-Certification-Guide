terraform {
  required_version = ">= 0.12"
  required_providers {
    google = {
      version = "~> 3.0"
    }
  }
}
provider "google" {
  credentials = file("terraform-project-2342-2ae8a44a5f2c.json")
  project     = var.project_name
  region      = var.gcp_region
  zone        = var.zone
}