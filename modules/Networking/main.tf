resource "google_compute_network" "vpc_network" {
  name                    = var.vpc_name
  auto_create_subnetworks = var.vpc_auto_create_subnetworks
  mtu                     = var.vpc_mtu
}

resource "google_compute_subnetwork" "subnet_a" {
  name          = var.subnet_a_name
  ip_cidr_range = var.subnet_a_cidr
  region        = var.subnet_a_region
  network       = google_compute_network.vpc_network.id
  private_ip_google_access = var.subnet_a_private_ip_google_access
}


resource "google_compute_firewall" "firewall_rules" {
  for_each = var.firewall_rules
  name        = each.key
  description = each.value.description
  direction   = each.value.direction
  network     = google_compute_network.vpc_network.id

  allow {
        ports = each.value.ports
        protocol  = each.value.protocol
  }

  source_ranges = each.value.source_ranges
}


