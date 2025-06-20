
provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_container_cluster" "primary" {
  name     = "devops-gke-cluster"
  location = var.region
  initial_node_count = 1
}
