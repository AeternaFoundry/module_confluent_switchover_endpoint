output "switchover_endpoints_id" {
  description = "Map of id values across all switchover_endpoints, keyed the same as var.switchover_endpoints except keys with no id are omitted"
  value       = { for k, v in confluent_switchover_endpoint.switchover_endpoints : k => v.id if v.id != null && length(v.id) > 0 }
}
output "switchover_endpoints_display_name" {
  description = "Map of display_name values across all switchover_endpoints, keyed the same as var.switchover_endpoints except keys with no display_name are omitted"
  value       = { for k, v in confluent_switchover_endpoint.switchover_endpoints : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "switchover_endpoints_endpoints" {
  description = "Map of endpoints values across all switchover_endpoints, keyed the same as var.switchover_endpoints except keys with no endpoints are omitted"
  value       = { for k, v in confluent_switchover_endpoint.switchover_endpoints : k => v.endpoints if v.endpoints != null && length(v.endpoints) > 0 }
}
output "switchover_endpoints_parent_resource_crn" {
  description = "Map of parent_resource_crn values across all switchover_endpoints, keyed the same as var.switchover_endpoints except keys with no parent_resource_crn are omitted"
  value       = { for k, v in confluent_switchover_endpoint.switchover_endpoints : k => v.parent_resource_crn if v.parent_resource_crn != null && length(v.parent_resource_crn) > 0 }
}
output "switchover_endpoints_phase" {
  description = "Map of phase values across all switchover_endpoints, keyed the same as var.switchover_endpoints except keys with no phase are omitted"
  value       = { for k, v in confluent_switchover_endpoint.switchover_endpoints : k => v.phase if v.phase != null && length(v.phase) > 0 }
}
output "switchover_endpoints_target" {
  description = "Map of target values across all switchover_endpoints, keyed the same as var.switchover_endpoints except keys with no target are omitted"
  value       = { for k, v in confluent_switchover_endpoint.switchover_endpoints : k => v.target if v.target != null && length(v.target) > 0 }
}

