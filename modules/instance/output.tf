
output "vm_self_link" {
  description = "The self link of the vm"
  value       = google_compute_instance.vm1.self_link
}

output "external_ip_address" {
  description = "External ip name"
  value       = google_compute_instance.vm1.network_interface.0.access_config.0.nat_ip
}
