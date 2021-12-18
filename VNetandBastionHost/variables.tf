variable "resourcegroup_name" {
  type        = string
  description = "The name of the resource group"
  default     = "<resouce group name>"
}

variable "location" {
  type        = string
  description = "The region for the deployment"
  default     = "<region>"
}

variable "tags" {
  type        = map(string)
  description = "Tags used for the deployment"
  default = {
    "Environment" = "Lab"
    "Owner"       = "<name>"
  }
}

variable "vnet_name" {
  type        = string
  description = "The name of the vnet"
  default     = "<vnet name>"
}

variable "vnet_address_space" {
  type        = list(any)
  description = "the address space of the VNet"
  default     = ["10.13.0.0/16"]
}

variable "subnets" {
  type = map(any)
  default = {
    subnet_1 = {
      name             = "subnet_1"
      address_prefixes = ["10.13.1.0/24"]
    }
    subnet_2 = {
      name             = "subnet_2"
      address_prefixes = ["10.13.2.0/24"]
    }
    subnet_3 = {
      name             = "subnet_3"
      address_prefixes = ["10.13.3.0/24"]
    }
    # The name must be AzureBastionSubnet
    bastion_subnet = {
      name             = "AzureBastionSubnet"
      address_prefixes = ["10.13.250.0/24"]
    }
  }
}

variable "bastionhost_name" {
  type        = string
  description = "The name of the basion host"
  default     = "<bastion host name>"
}
