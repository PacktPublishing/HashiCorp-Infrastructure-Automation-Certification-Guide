resource "google_storage_bucket" "gcp-stg" {
  name          = var.gcp_stg_name
  location      = var.gcp_location
  force_destroy = var.force_destroy
  storage_class = var.storage_class
  project       = var.project
  labels        = var.labels
  versioning {
    enabled = true
  }
}