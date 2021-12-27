terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.90.0"
    }
  }
}

provider "azurerm" {
  features {
    virtual_machine {
      delete_os_disk_on_deletion    = true
      skip_shutdown_and_force_delete = true
    }
  }
}

resource "azurerm_resource_group" "resourcegroup" {
    name     = "TFTestRG01"
  location = "CentralUS"
}


data "azurerm_subnet" "vmsubnet" {
  name                 = var.subname
  virtual_network_name = var.vnetname
  resource_group_name  = var.vnetrg
}

module "vm" {
  source     = "./WinServer"
  rgname     = azurerm_resource_group.resourcegroup.name
  location   = azurerm_resource_group.resourcegroup.location
  vmname     = "TFTestServer"
  size       = "Standard_B2ms"
  localadmin = "locadmin"
  adminpw    = var.adminpw
  subnetid   = data.azurerm_subnet.vmsubnet.id
}
