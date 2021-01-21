/******************************************
	VPC Code
 *****************************************/
resource "google_compute_network" "vpc" {
  name                            = var.vpc_name
  mtu                             = var.vpc_mtu
  description                     = var.vpc_description
  routing_mode                    = var.vpc_routing_mode
  project                         = var.project_id
  delete_default_routes_on_create = var.delete_default_routes_on_create
  auto_create_subnetworks         = var.auto_create_subnetworks
}