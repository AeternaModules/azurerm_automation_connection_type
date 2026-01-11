resource "azurerm_automation_connection_type" "automation_connection_types" {
  for_each = var.automation_connection_types

  automation_account_name = each.value.automation_account_name
  name                    = each.value.name
  resource_group_name     = each.value.resource_group_name
  is_global               = each.value.is_global

  field {
    is_encrypted = each.value.field.is_encrypted
    is_optional  = each.value.field.is_optional
    name         = each.value.field.name
    type         = each.value.field.type
  }
}

