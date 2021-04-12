variable "rg_names" {
  description = "list of the resource group names"
  type        = list(string)
  default     = ["Azure-rg", "AWS-rg", "Google-rg"]
}
