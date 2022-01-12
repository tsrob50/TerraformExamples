# Dynamic Network Security Group Example
This module creates a Network Security Group (NSG) and multiple NSG rules.  Rules are defined in the Variable and a Dynamic block is used to loop through and create each NSG rule


## Inputs
The example below illustrates the format for three NSG's to allow inbound port 80, 443, and 338.  If copying and pasting the below code, remove the "\\" used for formatting.

location            = "\<location>"\
resource_group_name = "\<resource group name>"\
name                = "\<NSG name"\
tags = {\
  "\<key>" = "\<value>"\
  "\<key>" = "\<value>"\
}\
nsg_rules = [\
  {\
    name                       = "AllowWebIn"\
    priority                   = 100\
    direction                  = "Inbound"\
    access                     = "Allow"\
    protocol                   = "Tcp"\
    source_port_range          = "*"\
    destination_port_range     = "80"\
    source_address_prefix      = "*"\
    destination_address_prefix = "*"\
  },\
  {\
    name                       = "AllowSSLIn"\
    priority                   = 110\
    direction                  = "Inbound"\
    access                     = "Allow"\
    protocol                   = "Tcp"\
    source_port_range          = "*"\
    destination_port_range     = "443"\
    source_address_prefix      = "*"\
    destination_address_prefix = "*"\
  },\
   {\
    name                       = "AllowRDPIn"\
    priority                   = 120\
    direction                  = "Inbound"\
    access                     = "Allow"\
    protocol                   = "Tcp"\
    source_port_range          = "*"\
    destination_port_range     = "3389"\
    source_address_prefix      = "*"\
    destination_address_prefix = "*"\
  }
]


## Outputs
The ID of the NSG is required to attach it to a  network resources.  
nsg_id = azurerm_network_security_group.network_security_group.id
