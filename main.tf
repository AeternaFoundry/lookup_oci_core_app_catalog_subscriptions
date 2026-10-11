data "oci_core_app_catalog_subscriptions" "core_app_catalog_subscriptions_lookup" {
  for_each = var.core_app_catalog_subscriptions_lookup

  compartment_id = each.value.compartment_id
  listing_id     = each.value.listing_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

