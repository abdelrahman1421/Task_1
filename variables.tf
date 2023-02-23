# <<Project>>

variable "region" {
  type = string
}

# <<Networking Module>>

# <VPC> 

variable "vpc_name" {
  type = string
}

variable "vpc_auto_create_subnetworks" {
  type = bool
}

variable "vpc_mtu" {
  type = number
}



# <Subnet>

variable "subnet_a_name" {
  type = string
}

variable "subnet_a_cidr" {
  type = string
}

variable "subnet_a_region" {
  type = string
}

variable "subnet_a_private_ip_google_access" {
  type = bool
}

# <Firewall>

variable "firewall_name" {
  type = string
}

variable "firewall_description" {
  type = string

}

variable "firewall_direction" {
  type = string
}

variable "firewall_source_ranges" {
  type = list(string)
}
variable "firewall_allow_protocol" {
  type = string
}

variable "firewall_allow_ports" {
  type = list(any)
}

# <<Compute Instance Module>>

# <VM>
variable "vm_name" {
  type = string
}

# variable "vm_tag" {
#   type = list(string)
# }

variable "vm_machine_type" {
  type = string
}

variable "vm_machine_image" {
  type = string
}

variable "vm_zone" {
  type = string
}

variable "allow_stopping_for_update" {
  type = bool
}
# <<GKE>>

variable "cluster_name" {
  type = string
}

variable "location" {
  type = string
}

variable "remove_default_node_pool" {
  type = bool
}

variable "initial_node_count" {
  type = number
}


variable "master_authorized_networks_cidr_blocks" {
  type = string
}

variable "master_authorized_networks_cidr_blocks_display_name" {
  type = string
}

variable "cluster_autoscaling" {
  type = bool
}

variable "cluster_ipv4_cidr_block" {
  type = string
}

variable "services_ipv4_cidr_block" {
  type = string
}

variable "enable_private_nodes" {
  type = bool
}

variable "enable_private_endpoint" {
  type = bool
}

variable "master_ipv4_cidr_block" {
  type = string
}

variable "node_pool_name" {
  type = string
}

variable "node_pool_location" {
  type = string
}

variable "node_count" {
  type = number
}

variable "node_locations" {
  type = list(string)

}

variable "node_config_preemptible" {
  type = bool
}

variable "node_config_machine_type" {
  type = string
}


variable "node_config_disk_size_gb" {
  type = number
}

variable "node_config_disk_type" {
  type = string
}

variable "node_config_image_type" {
  type = string
}

variable "node_config_oauth_scopes" {
  type = list(string)
}

# <<SA>>

variable "bigquery-account-id" {
  type = string
}

variable "bigquery-display-name" {
  type = string
}

variable "bigquery-iam-role-id" {
  type = string
}


variable "bigquery-iam-role-permissions" {
  type = list(any)
}

variable "project" {
  type = string

}

#
variable "gs-bucket-account-id" {
  type = string
}

variable "gs-bucket-display-name" {
  type = string
}

variable "gs-bucket-iam-role-id" {
  type = string
}

variable "gs-bucket-iam-role-permissions" {
  type = list(any)
}

#
variable "gcr-account-id" {
  type = string
}

variable "gcr-display-name" {
  type = string
}


variable "gcr-iam-role-permissions" {
  type = string
}

##########
variable "buckets" {
  type = map(object({
    name = string
    storage_class = string
    location = string
  }))
}