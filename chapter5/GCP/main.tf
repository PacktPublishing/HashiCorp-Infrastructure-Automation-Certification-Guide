data "google_project" "Terraform_project" {
  project_id = var.project_id
}
resource "google_app_engine_application" "Terraform_app" {
  project     = data.google_project.Terraform_project.project_id
  location_id = var.location_id
}
