terraform {
  required_version   = ">= 0.13"
}
 
resource "google_service_account" "service_account" {
  project            = var.project_id
  account_id         = "${var.service_account_name}-service-account-id"
  display_name       = "${var.service_account_name}-service-account"
}

resource "google_service_account_key" "service_account_key" {
  service_account_id = google_service_account.service_account.name
}

resource "local_file" "service_account_private_key" {
    content          = google_service_account_key.service_account_key.private_key
    filename         = "${var.service_account_name}_private_key.json"
    file_permission  = "600"
}

resource "google_project_iam_binding" "project" {
  project            = var.project_id
  for_each           = toset(var.roles)
  role               = each.key

  members            = [
                         "serviceAccount:${google_service_account.service_account.email}",
                       ]
}

