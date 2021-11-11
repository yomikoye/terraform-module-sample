
output "vpc" {
  description = "A reference to the VPC network"
  value       = google_compute_network.vpc_network.self_link
}

output "subnetwork" {
  description = "A reference to the subnetwork"
  value       = google_compute_subnetwork.vpc_network_subnet.self_link
}

output "subnetwork_cidr" {
  description = "CIDR range for the subnetwork"
  value       = google_compute_subnetwork.vpc_network_subnet.ip_cidr_range
}

output "firewall_rule" {
  value = google_compute_firewall.firewall_rule.self_link
}
