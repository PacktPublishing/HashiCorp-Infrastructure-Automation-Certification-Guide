output "vm_private_ip" {
  value = module.terraform-vm.nic
}
output "vm_name" {
  value = module.terraform-vm.vm_name
}
output "vm_id" {
  value = module.terraform-vm.vm_id
}