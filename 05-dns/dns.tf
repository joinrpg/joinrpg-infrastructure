resource "selectel_domains_zone_v2" "zones" {
  for_each = local.zones

  name       = each.key
  project_id = local.project_id
}

resource "selectel_domains_rrset_v2" "records" {
  for_each = local.records

  zone_id    = selectel_domains_zone_v2.zones[each.value.zone].id
  project_id = local.project_id

  # Ключ записи — <имя>/<тип>
  name    = split("/", each.key)[0]
  type    = split("/", each.key)[1]
  ttl     = each.value.ttl
  comment = try(each.value.comment, null)

  dynamic "records" {
    for_each = each.value.records

    content {
      content = records.value
    }
  }
}
