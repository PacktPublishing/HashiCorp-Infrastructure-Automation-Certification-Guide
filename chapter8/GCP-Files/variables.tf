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
variable "project_name" {
    type = string
    description = "provide google project name"
}
variable "labels" {
  type        = map
  description = "provide name of the labels"
}
variable "routing_mode" {
    type = string
    description = "provide routing mode GLOBAL or REGIONAL" 
}