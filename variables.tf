variable "project_id" {
  description = "The ID of the GCP project"
  default     = "eco-cyclist-328907"
  type        = string
  
}

variable "vpc_name" {
  description = "The name of the VPC"
  default     = "module-test"
  type        = string
}

variable "vpc_subnet_name" {
  description = "The name of the VPC subnet"
  default     = "module-test"
  type        = string
}

variable "region" {
  description = "The region for the subnetwork"
  default     = "europe-west1"
  type        = string
}

variable "ip_cidr_range" {
  description = "The IP address range of the subnetwork."
  default     = "10.0.0.0/20"
  type        = string
}

variable "firewall_source_range" {
  description = "The source range that is allowed access to the network"
  default     = ["0.0.0.0/0"]
  type        = list(string)
}

variable "service_account_name" {
  description = "The name of the service account"
  default     = "module"
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
 
variable "machine_type" {
  description = "The machine type of the instance"
  default     = "e2-medium"
  type        = string
}

variable "instance_name" {
  description = "The name of the instance"
  default     = "module-vm-test"
  type        = string
}

variable "zone" {
  description = "The zone the resource is deployed to"
  default     = "europe-west1-b"
  type        = string
}

