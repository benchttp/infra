variable "project_id" {
  description = "The ID of the project in which to provision resources"
  type        = string
}

variable "region" {
  description = "The region where to provision resources"
  type        = string
}

variable "zone" {
  description = "The location for zonal resources"
  type        = string
}

variable "name" {
  description = "Name of the cloud function"
  type        = string
}

variable "entry_point" {
  description = "Name of the function that will be executed on trigger"
  type        = string
}

variable "collection" {
  description = "The Cloud Firestore collection that will trigger the function when documents are created in"
  type        = string
}

variable "source_dir" {
  description = "Path to the directory containing the source code. Will be archived and uploaded."
  type        = string
}
