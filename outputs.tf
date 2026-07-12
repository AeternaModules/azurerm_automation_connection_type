output "automation_connection_types_id" {
  description = "Map of id values across all automation_connection_types, keyed the same as var.automation_connection_types"
  value       = { for k, v in azurerm_automation_connection_type.automation_connection_types : k => v.id }
}
output "automation_connection_types_automation_account_name" {
  description = "Map of automation_account_name values across all automation_connection_types, keyed the same as var.automation_connection_types"
  value       = { for k, v in azurerm_automation_connection_type.automation_connection_types : k => v.automation_account_name }
}
output "automation_connection_types_field" {
  description = "Map of field values across all automation_connection_types, keyed the same as var.automation_connection_types"
  value       = { for k, v in azurerm_automation_connection_type.automation_connection_types : k => v.field }
}
output "automation_connection_types_is_global" {
  description = "Map of is_global values across all automation_connection_types, keyed the same as var.automation_connection_types"
  value       = { for k, v in azurerm_automation_connection_type.automation_connection_types : k => v.is_global }
}
output "automation_connection_types_name" {
  description = "Map of name values across all automation_connection_types, keyed the same as var.automation_connection_types"
  value       = { for k, v in azurerm_automation_connection_type.automation_connection_types : k => v.name }
}
output "automation_connection_types_resource_group_name" {
  description = "Map of resource_group_name values across all automation_connection_types, keyed the same as var.automation_connection_types"
  value       = { for k, v in azurerm_automation_connection_type.automation_connection_types : k => v.resource_group_name }
}

