output "vm_private_ip" {
  value = module.terraform-vm.nic
}
output "vm_name" {
  value = module.terraform-vm.vm_name
}
output "vm_id" {
  value = module.terraform-vm.vm_id
}
output "stg_name" {
  value = azurerm_storage_account.stg_account.name
}
output "stg_id" {
  value = azurerm_storage_account.stg_account.id
}