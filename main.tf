module "network" {
  source                            = "./modules/Networking"
  vpc_name                          = var.vpc_name
  project = var.project
  vpc_auto_create_subnetworks       = var.vpc_auto_create_subnetworks
  vpc_mtu                           = var.vpc_mtu
  subnet_a_name                     = var.subnet_a_name
  subnet_a_cidr                     = var.subnet_a_cidr
  subnet_a_region                   = var.subnet_a_region
  subnet_a_private_ip_google_access = var.subnet_a_private_ip_google_access


}