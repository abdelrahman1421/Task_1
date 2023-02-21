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

# <>
