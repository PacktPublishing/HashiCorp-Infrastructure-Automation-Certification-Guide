terraform {
  required_version = ">= 0.13"
  required_providers {
    google = {
      version = "~> 3.0"
    }
  }
}
provider "google" {
  credentials = file("terraform-lab-project-001c988dafca.json")
  project     = "terraform-lab-project"
  region      = "us-west1"
  zone        = "us-west1-c"
}