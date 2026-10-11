resource "coder_metadata" "metadata" {
  for_each = var.metadata

  resource_id = each.value.resource_id
  daily_cost  = each.value.daily_cost
  hide        = each.value.hide
  icon        = each.value.icon

  dynamic "item" {
    for_each = each.value.item != null ? each.value.item : []
    content {
      key       = item.value.key
      sensitive = item.value.sensitive
      value     = item.value.value
    }
  }
}

