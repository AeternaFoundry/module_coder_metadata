output "metadata_id" {
  description = "Map of id values across all metadata, keyed the same as var.metadata except keys with no id are omitted"
  value       = { for k, v in coder_metadata.metadata : k => v.id if v.id != null && length(v.id) > 0 }
}
output "metadata_daily_cost" {
  description = "Map of daily_cost values across all metadata, keyed the same as var.metadata except keys with no daily_cost are omitted"
  value       = { for k, v in coder_metadata.metadata : k => v.daily_cost if v.daily_cost != null }
}
output "metadata_hide" {
  description = "Map of hide values across all metadata, keyed the same as var.metadata except keys with no hide are omitted"
  value       = { for k, v in coder_metadata.metadata : k => v.hide if v.hide != null }
}
output "metadata_icon" {
  description = "Map of icon values across all metadata, keyed the same as var.metadata except keys with no icon are omitted"
  value       = { for k, v in coder_metadata.metadata : k => v.icon if v.icon != null && length(v.icon) > 0 }
}
output "metadata_item" {
  description = "Map of item values across all metadata, keyed the same as var.metadata except keys with no item are omitted"
  value       = { for k, v in coder_metadata.metadata : k => v.item if v.item != null && length(v.item) > 0 }
}
output "metadata_resource_id" {
  description = "Map of resource_id values across all metadata, keyed the same as var.metadata except keys with no resource_id are omitted"
  value       = { for k, v in coder_metadata.metadata : k => v.resource_id if v.resource_id != null && length(v.resource_id) > 0 }
}

