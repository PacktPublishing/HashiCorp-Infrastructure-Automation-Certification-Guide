/******************************************
	Storage Variables
 *****************************************/
variable "stg_name" {
  type        = string
  description = "name of the GCP storage"
}
variable "location" {
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
  description = "Provide Storage Class and Supported values include: MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE"
}
variable "project_id" {
  type        = string
  description = "provide project ID"
}
variable "labels" {
  type        = map(any)
  description = "provide name of the labels"
}