output "automation_connection_types" {
  description = "All automation_connection_type resources"
  value       = azurerm_automation_connection_type.automation_connection_types
}
output "automation_connection_types_automation_account_name" {
  description = "List of automation_account_name values across all automation_connection_types"
  value       = [for k, v in azurerm_automation_connection_type.automation_connection_types : v.automation_account_name]
}
output "automation_connection_types_field" {
  description = "List of field values across all automation_connection_types"
  value       = [for k, v in azurerm_automation_connection_type.automation_connection_types : v.field]
}
output "automation_connection_types_is_global" {
  description = "List of is_global values across all automation_connection_types"
  value       = [for k, v in azurerm_automation_connection_type.automation_connection_types : v.is_global]
}
output "automation_connection_types_name" {
  description = "List of name values across all automation_connection_types"
  value       = [for k, v in azurerm_automation_connection_type.automation_connection_types : v.name]
}
output "automation_connection_types_resource_group_name" {
  description = "List of resource_group_name values across all automation_connection_types"
  value       = [for k, v in azurerm_automation_connection_type.automation_connection_types : v.resource_group_name]
}

