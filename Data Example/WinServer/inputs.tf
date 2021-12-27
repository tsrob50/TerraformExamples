variable "rgname" {
  type = string
  description = "the name of the resource group for the server"
}

variable "location" {
  type = string
  description = "the location for the deployment"
}

variable "subnetid" {
  type = string
  description = "the subnet ID the network card attaches to"
}

variable "vmname" {
  type = string
  description = "the name of the VM"
}

variable "size" {
  type = string
  description = "The size of the VM"
}

variable "localadmin" {
  type = string
  description = "the local admin account, cannot be administrator"
}

variable "adminpw" {
  type = string
  sensitive = true
  description = "the local admin password, must be 12 char or longer"
}