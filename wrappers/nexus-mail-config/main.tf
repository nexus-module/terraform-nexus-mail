module "wrapper" {
  source = "../../modules/nexus-mail-config"

  for_each = var.items

  enabled                   = try(each.value.enabled, var.defaults.enabled, null)
  from_address              = try(each.value.from_address, var.defaults.from_address)
  host                      = try(each.value.host, var.defaults.host)
  nexus_trust_store_enabled = try(each.value.nexus_trust_store_enabled, var.defaults.nexus_trust_store_enabled, null)
  password                  = try(each.value.password, var.defaults.password, null)
  port                      = try(each.value.port, var.defaults.port)
  ssl_on_connect_enabled    = try(each.value.ssl_on_connect_enabled, var.defaults.ssl_on_connect_enabled, null)
  start_tls_enabled         = try(each.value.start_tls_enabled, var.defaults.start_tls_enabled, null)
  start_tls_required        = try(each.value.start_tls_required, var.defaults.start_tls_required, null)
  subject_prefix            = try(each.value.subject_prefix, var.defaults.subject_prefix, null)
  username                  = try(each.value.username, var.defaults.username, null)
}
