## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |
| <a name="requirement_nexus"></a> [nexus](#requirement\_nexus) | >= 3.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_nexus"></a> [nexus](#provider\_nexus) | >= 3.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [nexus_mail_config.main](https://registry.terraform.io/providers/datadrivers/nexus/latest/docs/resources/mail_config) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Whether the config is enabled or not | `bool` | `null` | no |
| <a name="input_from_address"></a> [from\_address](#input\_from\_address) | From Address | `string` | n/a | yes |
| <a name="input_host"></a> [host](#input\_host) | Hostname | `string` | n/a | yes |
| <a name="input_nexus_trust_store_enabled"></a> [nexus\_trust\_store\_enabled](#input\_nexus\_trust\_store\_enabled) | SSL on connect enabled | `bool` | `null` | no |
| <a name="input_password"></a> [password](#input\_password) | Password | `string` | `null` | no |
| <a name="input_port"></a> [port](#input\_port) | Port number | `number` | n/a | yes |
| <a name="input_ssl_on_connect_enabled"></a> [ssl\_on\_connect\_enabled](#input\_ssl\_on\_connect\_enabled) | SSL on connect enabled | `bool` | `null` | no |
| <a name="input_start_tls_enabled"></a> [start\_tls\_enabled](#input\_start\_tls\_enabled) | Start TLS Enabled | `bool` | `null` | no |
| <a name="input_start_tls_required"></a> [start\_tls\_required](#input\_start\_tls\_required) | Start TLS required | `bool` | `null` | no |
| <a name="input_subject_prefix"></a> [subject\_prefix](#input\_subject\_prefix) | Subject prefix | `string` | `null` | no |
| <a name="input_username"></a> [username](#input\_username) | Username | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_from_address"></a> [from\_address](#output\_from\_address) | From address |
| <a name="output_host"></a> [host](#output\_host) | Host |
| <a name="output_port"></a> [port](#output\_port) | Port |

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |
| <a name="requirement_nexus"></a> [nexus](#requirement\_nexus) | >= 3.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_nexus"></a> [nexus](#provider\_nexus) | >= 3.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [nexus_mail_config.main](https://registry.terraform.io/providers/datadrivers/nexus/latest/docs/resources/mail_config) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Whether the config is enabled or not | `bool` | `null` | no |
| <a name="input_from_address"></a> [from\_address](#input\_from\_address) | From Address | `string` | n/a | yes |
| <a name="input_host"></a> [host](#input\_host) | Hostname | `string` | n/a | yes |
| <a name="input_nexus_trust_store_enabled"></a> [nexus\_trust\_store\_enabled](#input\_nexus\_trust\_store\_enabled) | SSL on connect enabled | `bool` | `null` | no |
| <a name="input_password"></a> [password](#input\_password) | Password | `string` | `null` | no |
| <a name="input_port"></a> [port](#input\_port) | Port number | `number` | n/a | yes |
| <a name="input_ssl_on_connect_enabled"></a> [ssl\_on\_connect\_enabled](#input\_ssl\_on\_connect\_enabled) | SSL on connect enabled | `bool` | `null` | no |
| <a name="input_start_tls_enabled"></a> [start\_tls\_enabled](#input\_start\_tls\_enabled) | Start TLS Enabled | `bool` | `null` | no |
| <a name="input_start_tls_required"></a> [start\_tls\_required](#input\_start\_tls\_required) | Start TLS required | `bool` | `null` | no |
| <a name="input_subject_prefix"></a> [subject\_prefix](#input\_subject\_prefix) | Subject prefix | `string` | `null` | no |
| <a name="input_username"></a> [username](#input\_username) | Username | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_from_address"></a> [from\_address](#output\_from\_address) | From address |
| <a name="output_host"></a> [host](#output\_host) | Host |
| <a name="output_port"></a> [port](#output\_port) | Port |
<!-- END_TF_DOCS -->
