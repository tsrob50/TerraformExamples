output "vm_id" {
  value       = module.vm.vm_id_out
  description = "The ID of the new VM"
}

output "vm_ip" {
  value       = module.vm.vm_ip_out
  description = "The private IP Address for the new VM"
}