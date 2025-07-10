variable "google_project" {
  type        = string
  description = "GCP project name"
}

variable "google_region" {
  type        = string
  default     = "us-central1"
  description = "GCP region to use"
}

variable "gke_location" {
  type        = string
  default     = "us-central1-c"
  description = "GKE location"
}

variable "gke_machine_type" {
  type        = string
  default     = "e2-medium"
  description = "Machine type"
}

variable "gke_num_nodes" {
  type        = number
  default     = 2
  description = "GKE nodes number"
}

variable "gke_cluster_name" {
  type        = string
  default     = "main"
  description = "GKE cluster name"
}

variable "gke_pool_name" {
  type        = string
  default     = "main"
  description = "GKE pool name"
}
