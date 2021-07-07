module "terraform-gcp-gcs" {
  source        = "github.com/PacktPublishing/Hashicorp-Infrastructure-Automation-Certification-Guide.git//chapter7/gcp/gcp-storage-module?ref=v2.0.0"
  gcp_stg_name  = "${local.gcp_string}-gcpstg"
  gcp_location  = var.gcp_location
  force_destroy = var.force_destroy
  storage_class = var.storage_class
  project       = var.project_id
  labels        = var.labels
}
resource "google_compute_network" "gcp-network" {
  name                    = "${local.gcp_string}-vpc"
  description             = "This is gcp terraform vpc"
  routing_mode            = var.routing_mode
  auto_create_subnetworks = false
  depends_on              = [module.terraform-gcp-gcs.gcs_name]
  project                 = var.project_id
}
resource "random_string" "string_name" {
  length  = 6
  special = false
  upper   = false
  number  = false
}
locals {
  gcp_string = random_string.string_name.result
}
resource "google_compute_subnetwork" "gcp-subnetwork" {
  name          = "${local.gcp_string}subnet"
  description   = "This is subnet address"
  ip_cidr_range = var.ip_cidr_range
  region        = var.gcp_region
  project       = var.project_id
  network       = google_compute_network.gcp-network.id
}
resource "google_compute_address" "internal_with_subnet_and_address" {
  name         = "${local.gcp_string}internal"
  subnetwork   = google_compute_subnetwork.gcp-subnetwork.id
  address_type = var.address_type
  address      = var.address
  region       = var.gcp_region
  project      = var.project_id
}