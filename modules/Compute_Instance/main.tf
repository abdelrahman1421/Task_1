resource "google_compute_instance" "private-vm" {
  name         = var.vm_name
  machine_type = var.vm_machine_type
  zone         = var.vm_zone
  allow_stopping_for_update = var.allow_stopping_for_update
  service_account {
    email = var.vm_service_account
    scopes = var.scopes
  }
  # tags = var.vm_tag
  boot_disk {
    initialize_params {
      image = var.vm_machine_image
    }
  }
  network_interface {
    network    = var.network
    subnetwork = var.subnetwork
  }

}
