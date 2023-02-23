resource "google_bigquery_dataset" "this" {
  for_each = var.datasets
  dataset_id               = each.key
  location                 = each.value.location
  friendly_name            = each.value.friendly_name
  delete_contents_on_destroy = each.value.delete_contents_on_destroy
  description = each.value.description
}