provider "aviatrix" {
  username = "admin"
  controller_ip = var.ctrl_ip
  password = var.ctrl_passwd
}

terraform {
  required_providers {
    aviatrix = {
      source = "AviatrixSystems/aviatrix"
      version = "3.1.5"
    }
  }
}

