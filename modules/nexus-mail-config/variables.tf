################################################################################
# Mail Config
################################################################################
variable "port" {
  description = "Port number"
  type        = number
}

variable "host" {
  description = "Hostname"
  type        = string
}

variable "from_address" {
  description = "From Address"
  type        = string
}

variable "enabled" {
  description = "Whether the config is enabled or not"
  type        = bool
  default     = null
}

variable "username" {
  description = "Username"
  type        = string
  default     = null
}

variable "password" {
  description = "Password"
  type        = string
  default     = null
  sensitive   = true
}

variable "subject_prefix" {
  description = "Subject prefix"
  type        = string
  default     = null
}

variable "start_tls_enabled" {
  description = "Start TLS Enabled"
  type        = bool
  default     = null
}

variable "start_tls_required" {
  description = "Start TLS required"
  type        = bool
  default     = null
}

variable "ssl_on_connect_enabled" {
  description = "SSL on connect enabled"
  type        = bool
  default     = null
}

variable "nexus_trust_store_enabled" {
  description = "SSL on connect enabled"
  type        = bool
  default     = null
}

variable "ssl_server_identity_check_enabled" {
  description = "Whether to verify the server identity when connecting over SSL/TLS"
  type        = bool
  default     = null
}
