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
  vm_service_account        = module.serviceAccount.bigquery-service-account
  scopes                    = var.scopes

}

##################################

# 

module "gke" {
  source                                              = "./modules/GKE"
  vpc_network                                         = module.network.vpc_id
  vpc_subnetwork                                      = module.network.subnetwork_id
  cluster_name                                        = var.cluster_name
  location                                            = var.location
  remove_default_node_pool                            = var.remove_default_node_pool
  initial_node_count                                  = var.initial_node_count
  master_authorized_networks_cidr_blocks              = var.master_authorized_networks_cidr_blocks
  master_authorized_networks_cidr_blocks_display_name = var.master_authorized_networks_cidr_blocks_display_name
  cluster_autoscaling                                 = var.cluster_autoscaling
  cluster_ipv4_cidr_block                             = var.cluster_ipv4_cidr_block
  services_ipv4_cidr_block                            = var.services_ipv4_cidr_block
  enable_private_nodes                                = var.enable_private_nodes
  enable_private_endpoint                             = var.enable_private_endpoint
  master_ipv4_cidr_block                              = var.master_ipv4_cidr_block
  node_pool_name                                      = var.node_pool_name
  node_pool_location                                  = var.node_pool_location
  node_locations                                      = var.node_locations
  node_count                                          = var.node_count
  node_config_preemptible                             = var.node_config_preemptible
  node_config_machine_type                            = var.node_config_machine_type
  node_config_disk_size_gb                            = var.node_config_disk_size_gb
  node_config_disk_type                               = var.node_config_disk_type
  node_config_image_type                              = var.node_config_image_type
  node_config_oauth_scopes                            = var.node_config_oauth_scopes
  gcr_service_account                                 = module.serviceAccount.gcr-ac-id
}

module "serviceAccount" {
  source                         = "./modules/Service_Account"
  bigquery-account-id            = var.bigquery-account-id
  bigquery-display-name          = var.bigquery-display-name
  bigquery-iam-role-id           = var.bigquery-iam-role-id
  bigquery-iam-role-permissions  = var.bigquery-iam-role-permissions
  gs-bucket-account-id           = var.gs-bucket-account-id
  gs-bucket-display-name         = var.gs-bucket-display-name
  gs-bucket-iam-role-id          = var.gs-bucket-iam-role-id
  gs-bucket-iam-role-permissions = var.gs-bucket-iam-role-permissions
  gcr-account-id                 = var.gcr-account-id
  gcr-display-name               = var.gcr-display-name
  gcr-iam-role-permissions       = var.gcr-iam-role-permissions
  project                        = var.project
}

module "buckets" {
  source  = "./modules/GS_Bucket"
  buckets = var.buckets

}

module "bigquery" {
  source   = "./modules/BigQuery"
  datasets = var.datasets
}