resource "google_service_account" "service_account" {
  account_id   = "cloud-function-invoker"
  display_name = "Cloud Function invoker service account"
}

resource "google_project_iam_member" "invoker" {
  count = length(local.roles) # Repeat for each role

  project = google_cloudfunctions_function.function.project

  role   = element(local.roles, count.index) # Bind each role
  member = "serviceAccount:${google_service_account.service_account.email}"
}

locals {
  roles = [
    "roles/cloudfunctions.invoker",
    "roles/datastore.user"
  ]
}
