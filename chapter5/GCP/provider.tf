provider "google" {
  credentials = file("terraform-project-xxxx.json")
  project     = "Terraform-project"
  region      = "asia-south1"
}