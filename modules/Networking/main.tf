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

resource "google_compute_firewall" "rules" {
  name        = var.firewall_name
  network     = google_compute_network.vpc_network.id
  description = var.firewall_description
  direction     = var.firewall_direction
  source_ranges = var.firewall_source_ranges

  allow {
    protocol  = var.firewall_allow_protocol
    ports     = var.firewall_allow_ports
  }

}