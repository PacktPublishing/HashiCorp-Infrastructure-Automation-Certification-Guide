variable "gcp_stg_name" {
  type        = string
  description = "name of the GCP storage"
}
variable "gcp_location" {
  type        = string
  description = "name of the location"
}
variable "force_destroy" {
  type        = bool
  description = "provide whether true or false"
  default     = true
}
variable "storage_class" {
  type        = string
  description = "Supported values include: MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE"
}
variable "project" {
  type        = string
  description = "provide project ID"
}
variable "labels" {
  type        = map(any)
  description = "provide name of the labels"
}