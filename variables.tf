# Project 

variable "project" {
  type = string
}

variable "region" {
  type = string
}

# Networking Module

variable "vpc_name" {
  type = string
}

variable "vpc_auto_create_subnetworks" {
  type = bool
}

variable "vpc_mtu" {
  type = number
}

##

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