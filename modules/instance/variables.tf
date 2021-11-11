variable "project_id" {
  description = "The ID of the GCP project"
  default     = "eco-cyclist-328907"
  type        = string
}

variable "region" {
  description = "The region the GCP project"
  default     = "us-west1"
  type        = string
}

variable "machine_type" {
  description = "The machine type of the instance"
  default     = "e2-medium"
  type        = string
}

variable "instance_name" {
  description = "The name of the instance"
  default     = "ga-test"
  type        = string
}

variable "zone" {
  description = "The zone the resource is deployed to"
  default     = "us-west1-b"
  type        = string
}


variable "subnetwork" {
  description = "The subnetwork for the resource"
  default     = "https://www.googleapis.com/compute/v1/projects/eco-cyclist-328907/regions/us-west1/subnetworks/ga-test-subnet"
  type        = string
}

