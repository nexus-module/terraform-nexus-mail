module "wrapper" {
  source = "../"

  for_each = var.items

  nexus_mail_config = try(each.value.nexus_mail_config, var.defaults.nexus_mail_config, [])
}
