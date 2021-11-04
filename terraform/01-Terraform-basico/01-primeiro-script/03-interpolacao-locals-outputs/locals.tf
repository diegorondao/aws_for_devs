locals {
  ip_filepath = "ips.json"
  commom_tags = {
    Service     = "Curso terraform"
    ManageBy    = "Terrafom"
    Environment = var.environment
    Owner       = "Diego"
  }
}