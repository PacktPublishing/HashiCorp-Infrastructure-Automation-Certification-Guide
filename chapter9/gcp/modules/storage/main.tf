/******************************************
	Storage Bucket Code
 *****************************************/
resource "google_storage_bucket" "stg" {
  name          = var.stg_name
  location      = var.location
  force_destroy = var.force_destroy
  storage_class = var.storage_class
  project       = var.project_id
  labels        = var.labels
  versioning {
    enabled = true
  }
}