####

module "mc_transit_aws_eu_central_1" {
  source  = "terraform-aviatrix-modules/mc-transit/aviatrix"
  name = "aws-transit-eu-central-1"
  cloud                  = "aws"
  cidr                   = "10.1.0.0/23"
  region                 = "eu-central-1"
  account                = "aws-account"
  local_as_number        = "65100"
  enable_transit_firenet = true
  ha_gw = true
}

module "spoke_aws_1" {
  source  = "terraform-aviatrix-modules/mc-spoke/aviatrix"
  cloud           = "aws"
  name            = "app1"
  cidr            = "10.100.0.0/20"
  region          = "eu-central-1"
  account         = "aws-account"
  transit_gw      = "aws-transit-eu-central-1"
  ha_gw = false
}

