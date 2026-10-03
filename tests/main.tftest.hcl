mock_provider "nexus" {}

run "creates_one_module_per_item" {
  command = plan

  variables {
    nexus_mail_config = [
      {
        port                              = 8082
        host                              = "host-a.example.org"
        from_address                      = "from-address-a@example.org"
        enabled                           = true
        username                          = "test-username-a"
        password                          = "test-password-a"
        subject_prefix                    = "test-subject-prefix-a"
        start_tls_enabled                 = true
        start_tls_required                = true
        ssl_on_connect_enabled            = true
        ssl_server_identity_check_enabled = true
        nexus_trust_store_enabled         = true
      },
      {
        port                              = 8082
        host                              = "host-b.example.org"
        from_address                      = "from-address-b@example.org"
        enabled                           = true
        username                          = "test-username-b"
        password                          = "test-password-b"
        subject_prefix                    = "test-subject-prefix-b"
        start_tls_enabled                 = true
        start_tls_required                = true
        ssl_on_connect_enabled            = true
        ssl_server_identity_check_enabled = true
        nexus_trust_store_enabled         = true
      }
    ]
  }

  assert {
    condition     = length(module.nexus_mail_config) == 2
    error_message = "nexus_mail_config must create one nexus-mail-config per item"
  }

  assert {
    condition     = alltrue([for k in ["host-a.example.org", "host-b.example.org"] : contains(keys(module.nexus_mail_config), k)])
    error_message = "nexus_mail_config must be keyed by host"
  }

}

run "creates_nothing_by_default" {
  command = plan

  assert {
    condition     = length(module.nexus_mail_config) == 0
    error_message = "nexus_mail_config must be empty by default"
  }

}
