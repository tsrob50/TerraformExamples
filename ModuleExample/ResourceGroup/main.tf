resource "azurerm_resource_group" "example" {
  name     = "${var.base_name}RG"
  location = var.location
}