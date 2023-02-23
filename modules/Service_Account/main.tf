resource "google_service_account" "read-write-bigquery" {
  account_id = var.bigquery-account-id
  display_name = var.bigquery-display-name
}


resource "google_project_iam_custom_role" "read-write-bigquery-custom-role" {
  role_id     = var.bigquery-iam-role-id
  title       = var.bigquery-iam-role-id
  permissions = var.bigquery-iam-role-permissions
}

resource "google_project_iam_binding" "read-write-bigquery-iam" {
  project = var.project
  role    = "projects/${var.project}/roles/${google_project_iam_custom_role.read-write-bigquery-custom-role.role_id}"
  members = [
    "serviceAccount:${google_service_account.read-write-bigquery.email}"
  ]
}

resource "google_service_account" "read-gs-bucket" {
  account_id = var.gs-bucket-account-id
  display_name = var.gs-bucket-display-name
}


resource "google_project_iam_custom_role" "read-gs-bucket-custom-role" {
  role_id     = var.gs-bucket-iam-role-id
  title       = var.gs-bucket-account-id
  permissions = var.gs-bucket-iam-role-permissions
}

resource "google_project_iam_binding" "read-gs-bucket-iam" {
  project = var.project
  role    = "projects/${var.project}/roles/${google_project_iam_custom_role.read-gs-bucket-custom-role.role_id}"
  members = [
    "serviceAccount:${google_service_account.read-gs-bucket.email}"
  ]
}

resource "google_service_account" "gcr-object-viewer" {
  account_id   = var.gcr-account-id
  display_name = var.gcr-display-name

}

resource "google_project_iam_binding" "gcr-object-viewer-role" {
  project = var.project
  role = var.gcr-iam-role-permissions
  members = ["serviceAccount:${google_service_account.gcr-object-viewer.email}"]
}
