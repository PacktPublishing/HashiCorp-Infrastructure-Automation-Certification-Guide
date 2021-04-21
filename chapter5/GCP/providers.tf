terraform {
  required_version = ">= 0.13"
  required_providers {
    google = {
      version = "~> 3.0"
    }
  }
}
provider "google" {
  credentials = file("terraform-project-xxxx.json")
  project     = "Terraform-project"
  region      = "asia-south1"
}