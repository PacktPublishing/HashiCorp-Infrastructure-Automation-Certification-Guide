/******************************************
	Subnet Output
 *****************************************/
output "subnets" {
  value       = google_compute_subnetwork.subnet
  description = "The created subnet resources"
}