resource "confluent_switchover_endpoint" "switchover_endpoints" {
  for_each = var.switchover_endpoints

  display_name        = each.value.display_name
  parent_resource_crn = each.value.parent_resource_crn

  dynamic "endpoints" {
    for_each = each.value.endpoints
    content {
      endpoint_filter {
        access_point_crn = endpoints.value.endpoint_filter.access_point_crn
        network_crn      = endpoints.value.endpoint_filter.network_crn
        type             = endpoints.value.endpoint_filter.type
      }
      name = endpoints.value.name
    }
  }
}

