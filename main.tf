provider "google" {
  project    = var.project_id
  region     = var.region
  zone       = var.zone
}

/******************************************
	VPC configuration
 *****************************************/
module "networking" {
  source                                 = "./modules/networking"
  project_id                             = var.project_id
  vpc_name                               = var.vpc_name
  vpc_subnet_name                        = var.vpc_subnet_name
  region_name                            = var.region
  ip_cidr_range                          = var.ip_cidr_range
  firewall_source_range                  = var.firewall_source_range
}

/******************************************
	Service account configuration
 *****************************************/
module "service-account" {
  source                                = "./modules/service-account"
  project_id                            = var.project_id
  service_account_name                  = var.service_account_name
  roles                                 = var.roles
}

/******************************************
	Instance configuration
 *****************************************/
module "instance" {
  source                               = "./modules/instance"
  project_id                           = var.project_id
  region                               = var.region
  machine_type                         = var.machine_type
  instance_name                        = var.instance_name
  zone                                 = var.zone
  subnetwork                           = module.networking.subnetwork
}
