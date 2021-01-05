output "gcs_name" {
  description = "Google cloud storage bucket name"
  value = module.terraform-gcp-gcs.gcs_name
}
output "id" {
    description = "Network ID details"
    value = google_compute_network.gcp-network.id
}