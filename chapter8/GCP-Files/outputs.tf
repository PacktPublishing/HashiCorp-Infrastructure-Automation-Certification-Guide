output "gcs_name" {
  description = "Google cloud storage bucket name"
  value       = module.terraform-gcp-gcs.gcs_name
}
output "vpc_id" {
  description = "Network ID details"
  value       = google_compute_network.gcp-network.id
}
output "compute_address_id" {
  description = "Compute Address ID"
  value       = google_compute_address.internal_with_subnet_and_address.id
}