/******************************************
	Routes Output
 *****************************************/
output "routes" {
  value       = google_compute_route.route
  description = "The created routes resources"
}