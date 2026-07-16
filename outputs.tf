output "firewall_policies_id" {
  description = "Map of id values across all firewall_policies, keyed the same as var.firewall_policies"
  value       = { for k, v in azurerm_firewall_policy.firewall_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "firewall_policies_auto_learn_private_ranges_enabled" {
  description = "Map of auto_learn_private_ranges_enabled values across all firewall_policies, keyed the same as var.firewall_policies"
  value       = { for k, v in azurerm_firewall_policy.firewall_policies : k => v.auto_learn_private_ranges_enabled if v.auto_learn_private_ranges_enabled != null }
}
output "firewall_policies_base_policy_id" {
  description = "Map of base_policy_id values across all firewall_policies, keyed the same as var.firewall_policies"
  value       = { for k, v in azurerm_firewall_policy.firewall_policies : k => v.base_policy_id if v.base_policy_id != null && length(v.base_policy_id) > 0 }
}
output "firewall_policies_child_policies" {
  description = "Map of child_policies values across all firewall_policies, keyed the same as var.firewall_policies"
  value       = { for k, v in azurerm_firewall_policy.firewall_policies : k => v.child_policies if v.child_policies != null && length(v.child_policies) > 0 }
}
output "firewall_policies_dns" {
  description = "Map of dns values across all firewall_policies, keyed the same as var.firewall_policies"
  value       = { for k, v in azurerm_firewall_policy.firewall_policies : k => v.dns if v.dns != null && length(v.dns) > 0 }
}
output "firewall_policies_explicit_proxy" {
  description = "Map of explicit_proxy values across all firewall_policies, keyed the same as var.firewall_policies"
  value       = { for k, v in azurerm_firewall_policy.firewall_policies : k => v.explicit_proxy if v.explicit_proxy != null && length(v.explicit_proxy) > 0 }
}
output "firewall_policies_firewalls" {
  description = "Map of firewalls values across all firewall_policies, keyed the same as var.firewall_policies"
  value       = { for k, v in azurerm_firewall_policy.firewall_policies : k => v.firewalls if v.firewalls != null && length(v.firewalls) > 0 }
}
output "firewall_policies_identity" {
  description = "Map of identity values across all firewall_policies, keyed the same as var.firewall_policies"
  value       = { for k, v in azurerm_firewall_policy.firewall_policies : k => v.identity if v.identity != null && length(v.identity) > 0 }
}
output "firewall_policies_insights" {
  description = "Map of insights values across all firewall_policies, keyed the same as var.firewall_policies"
  value       = { for k, v in azurerm_firewall_policy.firewall_policies : k => v.insights if v.insights != null && length(v.insights) > 0 }
}
output "firewall_policies_intrusion_detection" {
  description = "Map of intrusion_detection values across all firewall_policies, keyed the same as var.firewall_policies"
  value       = { for k, v in azurerm_firewall_policy.firewall_policies : k => v.intrusion_detection if v.intrusion_detection != null && length(v.intrusion_detection) > 0 }
}
output "firewall_policies_location" {
  description = "Map of location values across all firewall_policies, keyed the same as var.firewall_policies"
  value       = { for k, v in azurerm_firewall_policy.firewall_policies : k => v.location if v.location != null && length(v.location) > 0 }
}
output "firewall_policies_name" {
  description = "Map of name values across all firewall_policies, keyed the same as var.firewall_policies"
  value       = { for k, v in azurerm_firewall_policy.firewall_policies : k => v.name if v.name != null && length(v.name) > 0 }
}
output "firewall_policies_private_ip_ranges" {
  description = "Map of private_ip_ranges values across all firewall_policies, keyed the same as var.firewall_policies"
  value       = { for k, v in azurerm_firewall_policy.firewall_policies : k => v.private_ip_ranges if v.private_ip_ranges != null && length(v.private_ip_ranges) > 0 }
}
output "firewall_policies_resource_group_name" {
  description = "Map of resource_group_name values across all firewall_policies, keyed the same as var.firewall_policies"
  value       = { for k, v in azurerm_firewall_policy.firewall_policies : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "firewall_policies_rule_collection_groups" {
  description = "Map of rule_collection_groups values across all firewall_policies, keyed the same as var.firewall_policies"
  value       = { for k, v in azurerm_firewall_policy.firewall_policies : k => v.rule_collection_groups if v.rule_collection_groups != null && length(v.rule_collection_groups) > 0 }
}
output "firewall_policies_sku" {
  description = "Map of sku values across all firewall_policies, keyed the same as var.firewall_policies"
  value       = { for k, v in azurerm_firewall_policy.firewall_policies : k => v.sku if v.sku != null && length(v.sku) > 0 }
}
output "firewall_policies_sql_redirect_allowed" {
  description = "Map of sql_redirect_allowed values across all firewall_policies, keyed the same as var.firewall_policies"
  value       = { for k, v in azurerm_firewall_policy.firewall_policies : k => v.sql_redirect_allowed if v.sql_redirect_allowed != null }
}
output "firewall_policies_tags" {
  description = "Map of tags values across all firewall_policies, keyed the same as var.firewall_policies"
  value       = { for k, v in azurerm_firewall_policy.firewall_policies : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "firewall_policies_threat_intelligence_allowlist" {
  description = "Map of threat_intelligence_allowlist values across all firewall_policies, keyed the same as var.firewall_policies"
  value       = { for k, v in azurerm_firewall_policy.firewall_policies : k => v.threat_intelligence_allowlist if v.threat_intelligence_allowlist != null && length(v.threat_intelligence_allowlist) > 0 }
}
output "firewall_policies_threat_intelligence_mode" {
  description = "Map of threat_intelligence_mode values across all firewall_policies, keyed the same as var.firewall_policies"
  value       = { for k, v in azurerm_firewall_policy.firewall_policies : k => v.threat_intelligence_mode if v.threat_intelligence_mode != null && length(v.threat_intelligence_mode) > 0 }
}
output "firewall_policies_tls_certificate" {
  description = "Map of tls_certificate values across all firewall_policies, keyed the same as var.firewall_policies"
  value       = { for k, v in azurerm_firewall_policy.firewall_policies : k => v.tls_certificate if v.tls_certificate != null && length(v.tls_certificate) > 0 }
}

