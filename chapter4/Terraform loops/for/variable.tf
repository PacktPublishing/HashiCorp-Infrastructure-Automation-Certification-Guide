# Defined variable for the list:
variable "cloud" {
  description = "A list of cloud"
  type        = list(string)
  default     = ["azure", "aws", "gcp"]
}

# Defined variable for the map:
variable "cloud_map" {
  description = "map"
  type        = map(string)
  default = {
    Azure = "Microsoft"
    AWS   = "Amazon"
    GCP   = "Google"
  }
}
