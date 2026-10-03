################################################################################
# Mail Config
################################################################################
module "nexus_mail_config" {
  source = "./modules/nexus-mail-config"

  for_each = { for m in var.nexus_mail_config : m.host => m }

  port         = each.value.port
  host         = each.value.host
  from_address = each.value.from_address

  enabled                           = each.value.enabled
  username                          = each.value.username
  password                          = each.value.password
  subject_prefix                    = each.value.subject_prefix
  start_tls_enabled                 = each.value.start_tls_enabled
  start_tls_required                = each.value.start_tls_required
  ssl_on_connect_enabled            = each.value.ssl_on_connect_enabled
  ssl_server_identity_check_enabled = each.value.ssl_server_identity_check_enabled
  nexus_trust_store_enabled         = each.value.nexus_trust_store_enabled
}
