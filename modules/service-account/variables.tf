
variable "project_id" {
  description = "The ID of the GCP project"
  default     = "eco-cyclist-328907"
  type        = string
}

variable "service_account_name" {
  description = "The name of the service account"
  default     = "devops"
  type        = string
}


 variable "roles" {
  type        = list(string)
  description = "The list of roles"
  default     = [
                    "roles/apigateway.admin",
                    "roles/appengine.appCreator",
                    "roles/compute.admin",
                    "roles/cloudbuild.builds.builder",
                    "roles/clouddeploy.operator"
                ]
}