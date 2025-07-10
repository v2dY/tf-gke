output "name" {
  value = google_container_cluster.this.name
}

output "endpoint" {
  value = google_container_cluster.this.endpoint
}

output "client_certificate" {
  value     = base64decode(google_container_cluster.this.master_auth[0].client_certificate)
  sensitive = true
}

output "cluster_ca_certificate" {
  value     = base64decode(google_container_cluster.this.master_auth[0].cluster_ca_certificate)
  sensitive = true
}

output "client_config_token" {
  value     = data.google_client_config.current.access_token
  sensitive = true
}
