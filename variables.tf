variable "metadata" {
  description = <<EOT
Map of metadata, attributes below
Required:
    - resource_id
Optional:
    - daily_cost
    - hide
    - icon
    - item (block):
        - key (required)
        - sensitive (optional)
        - value (optional)
EOT

  type = map(object({
    resource_id = string
    daily_cost  = optional(number)
    hide        = optional(bool)
    icon        = optional(string)
    item = optional(list(object({
      key       = string
      sensitive = optional(bool)
      value     = optional(string)
    })))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

