terraform {
  required_version   = ">= 0.13"
}

data "google_compute_image" "ubuntu_image" {
  project  = "ubuntu-os-cloud"
  family = "ubuntu-2004-lts"
}

resource "google_compute_address" "ext_ip" {
  project      = var.project_id 
  region       = var.region
  name         = "${var.instance_name}-external-ip"
  address_type = "EXTERNAL"
}

resource "google_compute_instance" "vm1" {
  name         = "${var.instance_name}-vm"
  machine_type = var.machine_type
  zone         = var.zone
  project      = var.project_id 

  tags = ["type", "server"]

  boot_disk {
    initialize_params {
      image = data.google_compute_image.ubuntu_image.self_link
    }
  }

  network_interface {
    subnetwork = var.subnetwork

    access_config {
      nat_ip = google_compute_address.ext_ip.address
    }
  }

  metadata = {
    startup-script =  <<SCRIPT
            #!/bin/bash
            sudo apt update
            sudo apt install nginx -y
            systemctl enable nginx
            systemctl start nginx
            SCRIPT 
  }
 
}




