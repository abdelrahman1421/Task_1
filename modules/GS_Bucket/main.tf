resource "google_storage_bucket" "buckets" {
  for_each = var.buckets
  name          = each.value.name
  storage_class = each.value.storage_class
  location = each.value.location
}