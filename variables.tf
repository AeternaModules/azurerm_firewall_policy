variable "firewall_policies" {
  description = <<EOT
Map of firewall_policies, attributes below
Required:
    - location
    - name
    - resource_group_name
Optional:
    - auto_learn_private_ranges_enabled
    - base_policy_id
    - private_ip_ranges
    - sku
    - sql_redirect_allowed
    - tags
    - threat_intelligence_mode
    - dns (block):
        - proxy_enabled (optional)
        - servers (optional)
    - explicit_proxy (block):
        - enable_pac_file (optional)
        - enabled (optional)
        - http_port (optional)
        - https_port (optional)
        - pac_file (optional)
        - pac_file_port (optional)
    - identity (block):
        - identity_ids (optional)
        - type (required)
    - insights (block):
        - default_log_analytics_workspace_id (required)
        - enabled (required)
        - log_analytics_workspace (optional, block):
            - firewall_location (required)
            - id (required)
        - retention_in_days (optional)
    - intrusion_detection (block):
        - mode (optional)
        - private_ranges (optional)
        - signature_overrides (optional, block):
            - id (optional)
            - state (optional)
        - traffic_bypass (optional, block):
            - description (optional)
            - destination_addresses (optional)
            - destination_ip_groups (optional)
            - destination_ports (optional)
            - name (required)
            - protocol (required)
            - source_addresses (optional)
            - source_ip_groups (optional)
    - threat_intelligence_allowlist (block):
        - fqdns (optional)
        - ip_addresses (optional)
    - tls_certificate (block):
        - key_vault_secret_id (required)
        - name (required)
EOT

  type = map(object({
    location                          = string
    name                              = string
    resource_group_name               = string
    auto_learn_private_ranges_enabled = optional(bool)
    base_policy_id                    = optional(string)
    private_ip_ranges                 = optional(list(string))
    sku                               = optional(string) # Default: "Standard"
    sql_redirect_allowed              = optional(bool)
    tags                              = optional(map(string))
    threat_intelligence_mode          = optional(string) # Default: "Alert"
    dns = optional(object({
      proxy_enabled = optional(bool) # Default: false
      servers       = optional(list(string))
    }))
    explicit_proxy = optional(object({
      enable_pac_file = optional(bool)
      enabled         = optional(bool)
      http_port       = optional(number)
      https_port      = optional(number)
      pac_file        = optional(string)
      pac_file_port   = optional(number)
    }))
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
    insights = optional(object({
      default_log_analytics_workspace_id = string
      enabled                            = bool
      log_analytics_workspace = optional(object({
        firewall_location = string
        id                = string
      }))
      retention_in_days = optional(number)
    }))
    intrusion_detection = optional(object({
      mode           = optional(string)
      private_ranges = optional(list(string))
      signature_overrides = optional(object({
        id    = optional(string)
        state = optional(string)
      }))
      traffic_bypass = optional(object({
        description           = optional(string)
        destination_addresses = optional(set(string))
        destination_ip_groups = optional(set(string))
        destination_ports     = optional(set(string))
        name                  = string
        protocol              = string
        source_addresses      = optional(set(string))
        source_ip_groups      = optional(set(string))
      }))
    }))
    threat_intelligence_allowlist = optional(object({
      fqdns        = optional(set(string))
      ip_addresses = optional(set(string))
    }))
    tls_certificate = optional(object({
      key_vault_secret_id = string
      name                = string
    }))
  }))
}

