terraform {
  required_providers {
    google = {
      version = "~> 4.0.0"
    }
  }
}

locals {
  region                    = "europe-west3"
  zone                      = "europe-west3-c"
  cloudfunction_entry_point = "Digest"
  cloudfunction_name        = "digest-stats"
  firestore_collection      = "runs"
}

module "cloudfunction" {
  source = "./modules/cloudfunction"

  project_id  = var.project_id
  region      = local.region
  zone        = local.zone
  entry_point = local.cloudfunction_entry_point
  collection  = local.firestore_collection
  name        = local.cloudfunction_name
  source_dir  = var.cloudfunction_source_dir
}

module "firestore" {
  source = "./modules/firestore"

  project_id  = var.project_id
  location_id = local.region
}
