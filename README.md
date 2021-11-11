
# Terraform module for GCP deployment

This repository contains terraform modules for creating the following resources on GCP:

- VPC network and subnetwork
- Firewall rules for the created GCP subnetwork
- Service account creation and IAM rules applied
- GCP compute instance with external IP address deployed to the subnetwork
- You can verify successful deployment and firewall rules applied by browsing the external IP address. You should see the nginx welcome screen

To create the resources:

- Clone the repository
- Modify the variable file for your custom settings
- Run `terraform init` command
- Run `terraform plan` command
- Run `terraform apply` command

Kindly note that you need to have exported your GOOGLE_APPLICATION_CREDENTIALS before running the terraform commands and you need to have the necessary permissions and APIs enabled on your account to allow terraform create the resource.
