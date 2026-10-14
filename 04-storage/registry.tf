# Реестр контейнеров. Токены доступа к нему здесь не описаны
resource "selectel_craas_registry_v1" "registry" {
  name       = local.project
  project_id = local.project_id
}
