
########## Provider 
provider "aviatrix" {
  username     = "admin"
  password      = var.ctrl_password
  controller_ip = "18.156.141.82"
  version       = "2.17.0"
}


##### Aviatrix Security Domain Segment


resource "aviatrix_segmentation_security_domain" "security_segment_domain" {
  domain_name = var.security_segment_name
}

output "segment_name" {
value = aviatrix_segmentation_security_domain.security_segment_domain.domain_name
}
