# Сеть и подсеть создаются в слое 01-network
data "openstack_networking_network_v2" "network" {
  name = local.network_name
}

data "openstack_networking_subnet_v2" "subnet" {
  network_id = data.openstack_networking_network_v2.network.id
  cidr       = local.subnet_cidr
}

# Группа безопасности проекта по умолчанию: в ней стоит кластер PostgreSQL
data "openstack_networking_secgroup_v2" "default" {
  name      = "default"
  tenant_id = local.project_id
}

data "selectel_dbaas_datastore_type_v1" "postgresql" {
  project_id = local.project_id
  region     = local.region

  filter {
    engine  = "postgresql"
    version = "18"
  }
}

data "openstack_images_image_v2" "ubuntu" {
  name        = "Ubuntu 24.04 LTS 64-bit"
  visibility  = "public"
  most_recent = true
}
