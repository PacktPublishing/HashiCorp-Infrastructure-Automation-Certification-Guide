output "nic" {
  value = azurerm_network_interface.nic.private_ip_address
}

output "vm_id" {
  value = azurerm_windows_virtual_machine.virtual_machine.id
}

output "vm_name" {
  value = azurerm_windows_virtual_machine.virtual_machine.name
}