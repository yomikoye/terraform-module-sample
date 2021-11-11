
variable "project_id" {
  description = "The ID of the GCP project"
  default     = "eco-cyclist-328907"
  type        = string
}

variable "vpc_name" {
  description = "The name of the VPC"
  default     = "ga-test"
  type        = string
}

variable "vpc_subnet_name" {
  description = "The name of the VPC subnet"
  default     = "ga-test"
  type        = string
}

variable "region_name" {
  description = "The region for the subnetwork"
  default     = "us-west1"
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
