module "network" {
  source                            = "./modules/Networking"
  vpc_name                          = var.vpc_name
  vpc_auto_create_subnetworks       = var.vpc_auto_create_subnetworks
  vpc_mtu                           = var.vpc_mtu
  subnet_a_name                     = var.subnet_a_name
  subnet_a_cidr                     = var.subnet_a_cidr
  subnet_a_region                   = var.subnet_a_region
  subnet_a_private_ip_google_access = var.subnet_a_private_ip_google_access
  firewall_name                     = var.firewall_name
  firewall_description              = var.firewall_description
  firewall_direction                = var.firewall_direction
  firewall_source_ranges            = var.firewall_source_ranges
  firewall_allow_protocol           = var.firewall_allow_protocol
  firewall_allow_ports              = var.firewall_allow_ports

}

module "vm" {
  source                    = "./modules/Compute_Instance"
  vm_name                   = var.vm_name
  vm_machine_type           = var.vm_machine_type
  vm_machine_image          = var.vm_machine_image
  vm_zone                   = var.vm_zone
  network                   = module.network.vpc_id
  subnetwork                = module.network.subnetwork_id
  allow_stopping_for_update = var.allow_stopping_for_update

}