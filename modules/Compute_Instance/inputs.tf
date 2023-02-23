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

variable "network" {
    type = string
}

variable "subnetwork" {
    type = string
}

variable "allow_stopping_for_update" {
  type = bool
}

