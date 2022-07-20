module "caf" {
  source  = "aztfmod/caf/azurerm"
  version = "5.4.2"

  global_settings = var.global_settings
  resource_groups = var.resource_groups
  keyvaults       = var.keyvaults

  compute = {
    virtual_machines = var.virtual_machines
  }

  networking = {
    public_ip_addresses = var.public_ip_addresses
    network_security_group_definition = var.network_security_group_definition
    vnets               = var.vnets
  }
}
