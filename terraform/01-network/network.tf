resource "openstack_networking_network_v2" "network" {
  name = "${local.project}-network"
}

# Подсеть создана в панели без имени
resource "openstack_networking_subnet_v2" "subnet" {
  network_id      = openstack_networking_network_v2.network.id
  cidr            = local.subnet_cidr
  enable_dhcp     = false
  dns_nameservers = local.dns_servers
}

# Внешняя сеть Selectel, через неё роутер выходит в интернет
data "openstack_networking_network_v2" "external" {
  name     = "external-network"
  external = true
}

resource "openstack_networking_router_v2" "router" {
  name                = "${local.project}-router"
  external_network_id = data.openstack_networking_network_v2.external.id
}

resource "openstack_networking_router_interface_v2" "router" {
  router_id = openstack_networking_router_v2.router.id
  subnet_id = openstack_networking_subnet_v2.subnet.id
}
