# Nexus Mail

This module allows you to create **Nexus Privilege as a global resource** and **individual Nexus Privilege resources.** For individual examples, see the usage snippets and [examples](https://github.com/nexus-module/terraform-nexus-mail/tree/main/examples).

## Provider
You need use a [Nexus provider](https://registry.terraform.io/providers/datadrivers/nexus/latest/docs).
```hcl
provider "nexus" {
  insecure = true
  password = "admin123"
  url      = "https://127.0.0.1:8080"
  username = "admin"
}
```

## Root module usage

`nexus-mail`:

```hcl
module "nexus_mail" {
  source  = "nexus-module/mail/nexus"

  port         = 25
  host         = "examplehost.org"
  from_address = "from@examplehost.org"

  enabled                   = true
  username                  = "uname"
  password                  = "topsecret"
  subject_prefix            = "prefix: "
  start_tls_enabled         = true
  start_tls_required        = true
  ssl_on_connect_enabled    = true
  nexus_trust_store_enabled = true
}
```

## Individual module usage

`nexus-mail-config`:

```hcl
module "nexus_mail_config" {
  source  = "nexus-module/mail/nexus//modules/nexus-mail-config"

  port         = 25
  host         = "examplehost.org"
  from_address = "from@examplehost.org"

  enabled                   = true
  username                  = "uname"
  password                  = "topsecret"
  subject_prefix            = "prefix: "
  start_tls_enabled         = true
  start_tls_required        = true
  ssl_on_connect_enabled    = true
  nexus_trust_store_enabled = true
}
```

## Terraform Docs

### Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |
| <a name="requirement_nexus"></a> [nexus](#requirement\_nexus) | >= 3.0.0 |

### Providers

No providers.

### Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_nexus_mail_config"></a> [nexus\_mail\_config](#module\_nexus\_mail\_config) | ./modules/nexus-mail-config | n/a |

### Resources

No resources.

### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_nexus_mail_config"></a> [nexus\_mail\_config](#input\_nexus\_mail\_config) | Mail Config. | <pre>list(object({<br>    port                      = number<br>    host                      = string<br>    from_address              = string<br>    enabled                   = optional(bool)<br>    username                  = optional(string)<br>    password                  = optional(string)<br>    subject_prefix            = optional(string)<br>    start_tls_enabled         = optional(bool)<br>    start_tls_required        = optional(bool)<br>    ssl_on_connect_enabled    = optional(bool)<br>    nexus_trust_store_enabled = optional(bool)<br>  }))</pre> | `[]` | no |

### Outputs

| Name | Description |
|------|-------------|
| <a name="output_from_address"></a> [from\_address](#output\_from\_address) | From address |
| <a name="output_host"></a> [host](#output\_host) | Host |
| <a name="output_port"></a> [port](#output\_port) | Port |

## Authors

Module is maintained by [DevOps IA](https://github.com/devops-ia) with help from [these awesome contributors](https://github.com/nexus-module/terraform-nexus-mail/graphs/contributors).

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |
| <a name="requirement_nexus"></a> [nexus](#requirement\_nexus) | >= 3.0.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_nexus_mail_config"></a> [nexus\_mail\_config](#module\_nexus\_mail\_config) | ./modules/nexus-mail-config | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_nexus_mail_config"></a> [nexus\_mail\_config](#input\_nexus\_mail\_config) | Mail Config. | <pre>list(object({<br>    port                      = number<br>    host                      = string<br>    from_address              = string<br>    enabled                   = optional(bool)<br>    username                  = optional(string)<br>    password                  = optional(string)<br>    subject_prefix            = optional(string)<br>    start_tls_enabled         = optional(bool)<br>    start_tls_required        = optional(bool)<br>    ssl_on_connect_enabled    = optional(bool)<br>    nexus_trust_store_enabled = optional(bool)<br>  }))</pre> | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_from_address"></a> [from\_address](#output\_from\_address) | From address |
| <a name="output_host"></a> [host](#output\_host) | Host |
| <a name="output_port"></a> [port](#output\_port) | Port |
<!-- END_TF_DOCS -->
