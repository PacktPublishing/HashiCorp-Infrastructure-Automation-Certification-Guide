module "terraform-gcp-gcs" {
  source        = "github.com/PacktPublishing/Hashicorp-Infrastructure-Automation-Certification-Guide.git//chapter7/gcp/gcp-storage-module?ref=v2.0.0"
  gcp_stg_name  = var.gcp_stg_name
  gcp_location  = var.gcp_location
  force_destroy = var.force_destroy
  storage_class = var.storage_class
  project       = var.project
  labels        = var.labels
}