terraform {
  required_version = ">= 0.12"
  required_providers {
    google = {
      version = "~> 3.0"
    }
  }
}
provider "google" {
  credentials = file("terraform-lab-project-001c988dafca.json")
  project = var.project_name
  region  = "us-west1"
  zone    = "us-west1-c"
}