output "notifications_organizations_accesses_enabled" {
  description = "Map of enabled values across all notifications_organizations_accesses, keyed the same as var.notifications_organizations_accesses"
  value       = { for k, v in aws_notifications_organizations_access.notifications_organizations_accesses : k => v.enabled if v.enabled != null }
}

