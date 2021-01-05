module "terraform-gcp-gcs" {
  source      = "github.com/PacktPublishing/Hashicorp-Infrastructure-Automation-.git//chapter7/gcp/gcp-storage-module?ref=v2.0.0"
  gcp_stg_name  = "${local.gcp_string}-gcpstg"
  gcp_location  = var.gcp_location
  force_destroy = var.force_destroy
  storage_class = var.storage_class
  project       = var.project
  labels        = var.labels
}
resource "google_compute_network" "gcp-network" {
    name = "${var.vpc_name}-vpc"
    description = "This is gcp terraform vpc"
    project = var.project
    routing_mode = var.routing_mode
  depends_on = [ module.terraform-gcp-gcs.gcs_name ]
}
resource "random_string" "string_name" {
    length = 6
    special = false
    upper = false  
}
locals {
  gcp_string = random_string.string_name.result
}
