variable "switchover_endpoints" {
  description = <<EOT
Map of switchover_endpoints, attributes below
Required:
    - display_name
    - parent_resource_crn
    - endpoints (block):
        - endpoint_filter (required, block):
            - access_point_crn (optional)
            - network_crn (optional)
            - type (required)
        - name (required)
EOT

  type = map(object({
    display_name        = string
    parent_resource_crn = string
    endpoints = list(object({
      endpoint_filter = object({
        access_point_crn = optional(string)
        network_crn      = optional(string)
        type             = string
      })
      name = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.switchover_endpoints : (
        length(v.endpoints) >= 2 && length(v.endpoints) <= 2
      )
    ])
    error_message = "Each endpoints list must contain between 2 and 2 items"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

