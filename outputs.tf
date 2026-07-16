output "automation_connection_types_id" {
  description = "Map of id values across all automation_connection_types, keyed the same as var.automation_connection_types"
  value       = { for k, v in azurerm_automation_connection_type.automation_connection_types : k => v.id if v.id != null && length(v.id) > 0 }
}
output "automation_connection_types_automation_account_name" {
  description = "Map of automation_account_name values across all automation_connection_types, keyed the same as var.automation_connection_types"
  value       = { for k, v in azurerm_automation_connection_type.automation_connection_types : k => v.automation_account_name if v.automation_account_name != null && length(v.automation_account_name) > 0 }
}
output "automation_connection_types_field" {
  description = "Map of field values across all automation_connection_types, keyed the same as var.automation_connection_types"
  value       = { for k, v in azurerm_automation_connection_type.automation_connection_types : k => v.field if v.field != null && length(v.field) > 0 }
}
output "automation_connection_types_is_global" {
  description = "Map of is_global values across all automation_connection_types, keyed the same as var.automation_connection_types"
  value       = { for k, v in azurerm_automation_connection_type.automation_connection_types : k => v.is_global if v.is_global != null }
}
output "automation_connection_types_name" {
  description = "Map of name values across all automation_connection_types, keyed the same as var.automation_connection_types"
  value       = { for k, v in azurerm_automation_connection_type.automation_connection_types : k => v.name if v.name != null && length(v.name) > 0 }
}
output "automation_connection_types_resource_group_name" {
  description = "Map of resource_group_name values across all automation_connection_types, keyed the same as var.automation_connection_types"
  value       = { for k, v in azurerm_automation_connection_type.automation_connection_types : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}

