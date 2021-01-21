output "subnets" {
  description = "All the subnets"
  value       = module.subnet.subnets
}
output "stg_name" {
  description = "storage bucket name"
  value       = module.storage.stg_name
}