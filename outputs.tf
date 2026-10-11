output "core_app_catalog_subscriptions_lookup_id" {
  description = "Map of id values across all core_app_catalog_subscriptions_lookup, keyed the same as var.core_app_catalog_subscriptions_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_core_app_catalog_subscriptions.core_app_catalog_subscriptions_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "core_app_catalog_subscriptions_lookup_app_catalog_subscriptions" {
  description = "Map of app_catalog_subscriptions values across all core_app_catalog_subscriptions_lookup, keyed the same as var.core_app_catalog_subscriptions_lookup except keys with no app_catalog_subscriptions are omitted"
  value       = { for k, v in data.oci_core_app_catalog_subscriptions.core_app_catalog_subscriptions_lookup : k => v.app_catalog_subscriptions if v.app_catalog_subscriptions != null && length(v.app_catalog_subscriptions) > 0 }
}
output "core_app_catalog_subscriptions_lookup_compartment_id" {
  description = "Map of compartment_id values across all core_app_catalog_subscriptions_lookup, keyed the same as var.core_app_catalog_subscriptions_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_core_app_catalog_subscriptions.core_app_catalog_subscriptions_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "core_app_catalog_subscriptions_lookup_filter" {
  description = "Map of filter values across all core_app_catalog_subscriptions_lookup, keyed the same as var.core_app_catalog_subscriptions_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_core_app_catalog_subscriptions.core_app_catalog_subscriptions_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "core_app_catalog_subscriptions_lookup_listing_id" {
  description = "Map of listing_id values across all core_app_catalog_subscriptions_lookup, keyed the same as var.core_app_catalog_subscriptions_lookup except keys with no listing_id are omitted"
  value       = { for k, v in data.oci_core_app_catalog_subscriptions.core_app_catalog_subscriptions_lookup : k => v.listing_id if v.listing_id != null && length(v.listing_id) > 0 }
}

