output "metadata_id" {
  description = "Map of id values across all metadata, keyed the same as var.metadata"
  value       = { for k, v in coder_metadata.metadata : k => v.id }
}
output "metadata_daily_cost" {
  description = "Map of daily_cost values across all metadata, keyed the same as var.metadata"
  value       = { for k, v in coder_metadata.metadata : k => v.daily_cost }
}
output "metadata_hide" {
  description = "Map of hide values across all metadata, keyed the same as var.metadata"
  value       = { for k, v in coder_metadata.metadata : k => v.hide }
}
output "metadata_icon" {
  description = "Map of icon values across all metadata, keyed the same as var.metadata"
  value       = { for k, v in coder_metadata.metadata : k => v.icon }
}
output "metadata_item" {
  description = "Map of item values across all metadata, keyed the same as var.metadata"
  value       = { for k, v in coder_metadata.metadata : k => v.item }
}
output "metadata_resource_id" {
  description = "Map of resource_id values across all metadata, keyed the same as var.metadata"
  value       = { for k, v in coder_metadata.metadata : k => v.resource_id }
}

