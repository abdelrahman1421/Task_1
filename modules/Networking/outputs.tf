output "vpc_id" {
  value = google_compute_network.vpc_network.id
}

output "subnetwork_id" {
  value = google_compute_subnetwork.subnet_a.id
}