output "nsg_id" {
  value = azurerm_network_security_group.network_security_group.id
  description = "The value of the NSG ID"
}