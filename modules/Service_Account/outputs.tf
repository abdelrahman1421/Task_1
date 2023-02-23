output "gcr-ac-id" {
  value = google_service_account.gcr-object-viewer.email
}

output "gs-service-account" {
  value = google_service_account.read-gs-bucket.email
  
}

output "bigquery-service-account" {
  value = google_service_account.read-write-bigquery.email
}