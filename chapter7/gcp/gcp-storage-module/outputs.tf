output "gcs_self_link" {
  value = google_storage_bucket.gcp-stg.self_link
}
output "gcs_url" {
  value = google_storage_bucket.gcp-stg.url
}
output "gcs_name" {
  value = google_storage_bucket.gcp-stg.name
}