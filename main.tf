provider "google" {
  project = var.google_project
  region  = var.google_region
}

resource "google_container_cluster" "this" {
  name     = var.gke_cluster_name
  location = var.gke_location

  initial_node_count       = 1
  remove_default_node_pool = true
  deletion_protection      = false

  workload_identity_config {
    workload_pool = "${var.google_project}.svc.id.goog"
  }

  node_config {
    workload_metadata_config {
      mode = "GKE_METADATA"
    }
  }
}

resource "google_container_node_pool" "this" {
  name       = var.gke_pool_name
  project    = google_container_cluster.this.project
  cluster    = google_container_cluster.this.name
  location   = google_container_cluster.this.location
  node_count = var.gke_num_nodes

  node_config {
    machine_type = var.gke_machine_type
  }
}

