# Subnet Vars
variable "subname" {
  type = string
  description = "The name of the existing subnet"
}

variable "vnetname" {
  type = string
  description = "The name of the existing vnet"
}

variable "vnetrg" {
  type = string
  description = "The name of the VNet Resource Group"
}

#VMVare
variable "adminpw" {
  type = string
  sensitive = true
  description = "the local admin password, must be 12 char or longer"
}