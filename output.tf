
output "vpc" {
  description = "A reference to the VPC network"
  value       = module.networking.vpc
}

output "subnetwork" {
  description = "A reference to the subnetwork"
  value       = module.networking.subnetwork
}

output "subnetwork_cidr" {
  description = "CIDR range for the subnetwork"
  value       = module.networking.subnetwork_cidr
}

output "firewall_rule" {
  value = module.networking.firewall_rule
}

output "service_account_name" {
  description = "Name of service account"
  value       = module.service-account.service_account_name
}

output "service_account_email" {
  description = "Email of service account"
  value       = module.service-account.service_account_email
}

output "vm_self_link" {
  description = "The self link of the vm"
  value       = module.instance.vm_self_link
}

output "external_ip_address" {
  description = "External ip name"
  value       = module.instance.external_ip_address
}
