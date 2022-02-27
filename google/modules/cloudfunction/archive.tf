data "archive_file" "source" {
  type        = "zip"
  source_dir  = var.source_dir
  output_path = "${path.root}/dist/function.zip"
  excludes    = fileset(path.root, "**")
}

resource "google_storage_bucket" "bucket" {
  name     = "${var.name}-function"
  location = "EUROPE-WEST3"
}

resource "google_storage_bucket_object" "archive" {
  # Append file MD5 to force bucket to be recreated when the content changes
  name   = "function-${data.archive_file.source.output_md5}.zip"
  bucket = google_storage_bucket.bucket.name
  source = data.archive_file.source.output_path
}
