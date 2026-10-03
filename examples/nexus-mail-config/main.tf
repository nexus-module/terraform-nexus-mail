provider "nexus" {
  insecure = true
  password = "admin123"
  url      = "https://127.0.0.1:8080"
  username = "admin"
}

################################################################################
# Mail Config
################################################################################
module "nexus_mail_config" {
  source = "../../modules/nexus-mail-config"

  port         = 25
  host         = "examplehost.org"
  from_address = "from@examplehost.org"

  enabled                           = true
  username                          = "uname"
  password                          = "topsecret"
  subject_prefix                    = "prefix: "
  start_tls_enabled                 = true
  start_tls_required                = true
  ssl_on_connect_enabled            = true
  ssl_server_identity_check_enabled = true
  nexus_trust_store_enabled         = true
}
