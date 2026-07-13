variable "automation_connection_types" {
  description = <<EOT
Map of automation_connection_types, attributes below
Required:
    - automation_account_name
    - name
    - resource_group_name
    - field (block):
        - is_encrypted (optional)
        - is_optional (optional)
        - name (required)
        - type (required)
Optional:
    - is_global
EOT

  type = map(object({
    automation_account_name = string
    name                    = string
    resource_group_name     = string
    is_global               = optional(bool)
    field = list(object({
      is_encrypted = optional(bool)
      is_optional  = optional(bool)
      name         = string
      type         = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.automation_connection_types : (
        length(v.field) >= 1
      )
    ])
    error_message = "Each field list must contain at least 1 items"
  }
}

