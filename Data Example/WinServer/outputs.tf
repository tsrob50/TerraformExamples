output "vm_id_out" {
  value = azurerm_windows_virtual_machine.vm.id
}

output "vm_ip_out" {
value = azurerm_network_interface.netinterface.private_ip_addresses
}