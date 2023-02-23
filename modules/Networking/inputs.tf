variable "vpc_name" {
  type= string
}

variable "vpc_auto_create_subnetworks" {
  type= bool
}

variable "vpc_mtu" {
  type= number
}


#################################

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

#################################

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


####################

variable "firewall_rules" {
  type = map(object({
    description = string
    direction   = string
    action      = string
    protocol   = string
    ports = list(string)
    source_ranges  = list(string)
  }))
  description = "Map of firewall rules to create"

  default = {
    allow-ssh-through-iap = {
      description = "allow-ssh-through-iap"
      direction   = "INGRESS"
      action      = "allow"
      protocol   = "tcp"
      ports = ["22"]
      source_ranges  = ["35.235.240.0/20"]

    }
}
}