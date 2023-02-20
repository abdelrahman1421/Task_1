# Project and Region deatails 

project = "abdelrahman-377520"
region  = "us-central1"

# Networking Module

vpc_name                    = "task"
vpc_mtu                     = 1460
vpc_auto_create_subnetworks = false
##
subnet_a_name                     = "subnet-a"
subnet_a_cidr                     = "10.0.0.0/24"
subnet_a_region                   = "us-central1-a"
subnet_a_private_ip_google_access = true