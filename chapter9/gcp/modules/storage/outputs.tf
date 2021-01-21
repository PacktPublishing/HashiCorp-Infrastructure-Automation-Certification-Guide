/******************************************
	Storage Bucket Output
 *****************************************/
output "stg_self_link" {
  value = google_storage_bucket.stg.self_link
}
output "stg_url" {
  value = google_storage_bucket.stg.url
}
output "stg_name" {
  value = google_storage_bucket.stg.name
}