output "webapp_name" {
  description = "Web App name"
  value       = module.webapp.webapp_name
}
output "webapp_id" {
  description = "Web App ID"
  value       = module.webapp.webapp_id
}
output "storage_account_id" {
  description = "storage ID"
  value       = module.storage.storage_account_id
}
output "storage_account_name" {
  description = "storage name"
  value       = module.storage.storage_account_name
}