# Сеть и подсеть создаются в слое 01-network
data "openstack_networking_network_v2" "network" {
  name = local.network_name
}

data "openstack_networking_subnet_v2" "subnet" {
  network_id = data.openstack_networking_network_v2.network.id
  cidr       = local.subnet_cidr
}
