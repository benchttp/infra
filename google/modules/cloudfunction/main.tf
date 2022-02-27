provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

resource "google_cloudfunctions_function" "function" {
  project     = var.project_id
  region      = var.region
  name        = var.name
  description = "${var.name} is a Cloud Function triggered by a Firestore create event to extract, compute and store statistics of a run."

  runtime             = "go116"
  available_memory_mb = 256
  timeout             = 30
  entry_point         = var.entry_point
  event_trigger {
    event_type = "providers/cloud.firestore/eventTypes/document.create"
    resource   = "projects/${var.project_id}/databases/(default)/documents/${var.collection}/{id}"
  }
  source_archive_bucket = google_storage_bucket.bucket.name
  source_archive_object = google_storage_bucket_object.archive.name
  max_instances         = 10
}
