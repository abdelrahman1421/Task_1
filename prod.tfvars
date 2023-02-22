# Project and Region deatails 

region = "us-central1"
#######################################################

# Networking Module

# VPC
vpc_name                    = "task"
vpc_mtu                     = 1460
vpc_auto_create_subnetworks = false

# Subent_a
subnet_a_name                     = "subnet-a"
subnet_a_cidr                     = "10.0.0.0/24"
subnet_a_region                   = "us-central1"
subnet_a_private_ip_google_access = true

#Firewall
firewall_name           = "allow-ssh-through-iap"
firewall_description    = "Creates managed firewall rule"
firewall_direction      = "INGRESS"
firewall_source_ranges  = ["35.235.240.0/20"]
firewall_allow_protocol = "tcp"
firewall_allow_ports    = ["22"]

#######################################################

# VM
vm_name                   = "private-vm"
vm_machine_type           = "e2-medium"
vm_zone                   = "us-central1-a"
vm_machine_image          = "debian-cloud/debian-11"
allow_stopping_for_update = true

#######################################################

# GKE
cluster_name                                        = "task-cluster"
location                                            = "us-central1-a"
remove_default_node_pool                            = true
initial_node_count                                  = 1
master_authorized_networks_cidr_blocks              = "10.0.0.0/24"
master_authorized_networks_cidr_blocks_display_name = "managment-cidr-range"
cluster_autoscaling                                 = false
cluster_ipv4_cidr_block                             = "10.1.0.0/16"
services_ipv4_cidr_block                            = "10.2.0.0/16"
enable_private_nodes                                = true
enable_private_endpoint                             = true
master_ipv4_cidr_block                              = "172.16.0.0/28"
node_pool_name                                      = "clusternodepool"
node_pool_location                                  = "us-central1-a"
node_count                                          = 1
node_locations                                      = ["us-central1-c","us-central1-f"]
node_config_preemptible                             = false
node_config_machine_type                            = "e2-standard-2"
node_config_disk_size_gb                            = 100
node_config_disk_type                               = "pd-standard"
node_config_image_type                              = "COS_CONTAINERD"
node_config_oauth_scopes                            = ["https://www.googleapis.com/auth/cloud-platform"]
