
output "service_account_name" {
  description = "Name of service account"
  value       = google_service_account.service_account.name
}

output "service_account_email" {
  description = "Email of service account"
  value       = google_service_account.service_account.email
}

output "service_account_public_key" {
  description = "Public key of service account"
  value       = google_service_account_key.service_account_key.public_key
}