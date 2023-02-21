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