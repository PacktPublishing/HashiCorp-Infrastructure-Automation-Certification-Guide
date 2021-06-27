terraform {
  required_version = ">= 1.0"
  required_providers {
    google = {
      version = "~> 3.0"
    }
  }
}
provider "google" {
  project     = "terraform-lab-project"
  region      = "us-west1"
  zone        = "us-west1-c"
}