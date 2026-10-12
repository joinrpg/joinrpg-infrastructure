# Сеть создана в панели до появления этого кода. Блоки import забирают её в состояние
# при первом apply; после него файл можно удалить.
import {
  to = openstack_networking_network_v2.network
  id = "b0d24007-d244-4089-b1d9-3778354176b4"
}

import {
  to = openstack_networking_subnet_v2.subnet
  id = "482850c8-5275-4d71-8e4e-c5bdbd5b71b3"
}

import {
  to = openstack_networking_router_v2.router
  id = "3a03b433-9441-4dcf-b873-c9f46ee66729"
}

# ID порта роутера в подсети (192.168.0.1)
import {
  to = openstack_networking_router_interface_v2.router
  id = "cefadc1b-48f7-4105-99d9-a460210bc397"
}
