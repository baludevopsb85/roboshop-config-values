# ----------------------------
# Vault Provider Configuration
# ----------------------------
# Configures Terraform to connect to a Vault server

provider "vault" {
  address = "http://vault-internal.robobal.store:8200"
  token   = var.token
}

# ---------------------------------------
# 2. Terraform Backend Configuration (S3)
# ---------------------------------------
# Configures remote state storage in an S3 bucket

terraform {
  backend "s3" {
    bucket = "terraform-b85"
    key    = "roboshop-config-values/terraform.tfstate"
    region = "us-east-1"
  }
}
