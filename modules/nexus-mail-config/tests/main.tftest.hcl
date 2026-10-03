mock_provider "nexus" {}

run "maps_all_inputs_to_resource" {
  command = plan

  variables {
    enabled                           = true
    from_address                      = "from-address@example.org"
    host                              = "host.example.org"
    nexus_trust_store_enabled         = true
    password                          = "test-password"
    port                              = 8082
    ssl_on_connect_enabled            = true
    ssl_server_identity_check_enabled = true
    start_tls_enabled                 = true
    start_tls_required                = true
    subject_prefix                    = "test-subject-prefix"
    username                          = "test-username"
  }

  assert {
    condition     = nexus_mail_config.main.port == var.port
    error_message = "port does not match var.port"
  }

  assert {
    condition     = nexus_mail_config.main.host == var.host
    error_message = "host does not match var.host"
  }

  assert {
    condition     = nexus_mail_config.main.from_address == var.from_address
    error_message = "from_address does not match var.from_address"
  }

  assert {
    condition     = nexus_mail_config.main.enabled == var.enabled
    error_message = "enabled does not match var.enabled"
  }

  assert {
    condition     = nexus_mail_config.main.username == var.username
    error_message = "username does not match var.username"
  }

  assert {
    condition     = nexus_mail_config.main.password == var.password
    error_message = "password does not match var.password"
  }

  assert {
    condition     = nexus_mail_config.main.subject_prefix == var.subject_prefix
    error_message = "subject_prefix does not match var.subject_prefix"
  }

  assert {
    condition     = nexus_mail_config.main.start_tls_enabled == var.start_tls_enabled
    error_message = "start_tls_enabled does not match var.start_tls_enabled"
  }

  assert {
    condition     = nexus_mail_config.main.start_tls_required == var.start_tls_required
    error_message = "start_tls_required does not match var.start_tls_required"
  }

  assert {
    condition     = nexus_mail_config.main.ssl_on_connect_enabled == var.ssl_on_connect_enabled
    error_message = "ssl_on_connect_enabled does not match var.ssl_on_connect_enabled"
  }

  assert {
    condition     = nexus_mail_config.main.ssl_server_identity_check_enabled == var.ssl_server_identity_check_enabled
    error_message = "ssl_server_identity_check_enabled does not match var.ssl_server_identity_check_enabled"
  }

  assert {
    condition     = nexus_mail_config.main.nexus_trust_store_enabled == var.nexus_trust_store_enabled
    error_message = "nexus_trust_store_enabled does not match var.nexus_trust_store_enabled"
  }

}

run "omits_optional_blocks" {
  command = plan

  variables {
    from_address = "from-address@example.org"
    host         = "host.example.org"
    port         = 8082
  }

  assert {
    condition     = nexus_mail_config.main.port == var.port
    error_message = "port does not match var.port"
  }

}
