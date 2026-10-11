variable "core_app_catalog_subscriptions_lookup" {
  description = <<EOT
Map of core_app_catalog_subscriptions_lookup, attributes below
Required:
    - compartment_id
Optional:
    - listing_id
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id = string
    listing_id     = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

