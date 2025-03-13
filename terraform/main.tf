provider "google" {
  credentials = file("/Users/syedejazahammed/downloads/gcp_key.json")
  project     = "helical-cascade-453411-b5"
  region      = "us-central1"
}

resource "google_container_cluster" "primary" {
  name     = "my-standard-cluster"
  location = "us-central1-a"

  initial_node_count = 3

  node_config {
    machine_type = "e2-medium"
    disk_type    = "pd-standard"
    disk_size_gb = 100
  }
}