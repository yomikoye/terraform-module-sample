
terraform {
  required_version = ">= 0.13"
}

# create network
resource "google_compute_network" "vpc_network" {
  project                 = var.project_id # Replace this with your project ID in quotes
  name                    = "${var.vpc_name}-network"
  auto_create_subnetworks = false
}

# create subnet
resource "google_compute_subnetwork" "vpc_network_subnet" {
  name          = "${var.vpc_subnet_name}-subnet"
  project       = var.project_id 
  region        = var.region_name
  ip_cidr_range = var.ip_cidr_range
  network       = google_compute_network.vpc_network.id
}

# firewall rule allow ssh http https
resource "google_compute_firewall" "firewall_rule" {
  name          = "${var.vpc_name}-firewall"
  project       = var.project_id 
  network       = google_compute_network.vpc_network.id
 
  allow {
    protocol    = "tcp"
    ports       = ["22", "80", "443"]
  }
 
  source_ranges = var.firewall_source_range
}

