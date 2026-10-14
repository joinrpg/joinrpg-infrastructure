resource "selectel_mks_cluster_v1" "k8s" {
  name         = local.project
  project_id   = local.project_id
  region       = local.region
  kube_version = local.kube_version

  # Три мастера в трёх зонах пула
  cluster_type = "HIGH_AVAILABILITY_MULTI_AZ"

  network_id       = data.openstack_networking_network_v2.network.id
  subnet_id        = data.openstack_networking_subnet_v2.subnet.id
  private_kube_api = false

  cni_type = "CALICO"

  enable_autorepair                 = false
  enable_patch_version_auto_upgrade = false
  maintenance_window_start          = local.maintenance_window_start
}

resource "selectel_mks_nodegroup_v1" "zone-a" {
  cluster_id        = selectel_mks_cluster_v1.k8s.id
  project_id        = selectel_mks_cluster_v1.k8s.project_id
  region            = selectel_mks_cluster_v1.k8s.region
  availability_zone = "${local.region}a"
  nodes_count       = 2

  cpus        = local.node_cpus
  ram_mb      = local.node_ram_mb
  volume_gb   = local.node_volume_gb
  volume_type = "${local.node_volume_type}.${local.region}a"

  install_nvidia_device_plugin = false
  preemptible                  = false

  # Группа создана в панели и импортирована: API не возвращает число ядер и память,
  # и без этого блока Terraform пересоздаёт группу. Чтобы изменить размер нод,
  # блок нужно убрать — группа будет пересоздана.
  lifecycle {
    ignore_changes = [cpus, ram_mb]
  }
}

resource "selectel_mks_nodegroup_v1" "zone-b" {
  cluster_id        = selectel_mks_cluster_v1.k8s.id
  project_id        = selectel_mks_cluster_v1.k8s.project_id
  region            = selectel_mks_cluster_v1.k8s.region
  availability_zone = "${local.region}b"
  nodes_count       = 1

  cpus        = local.node_cpus
  ram_mb      = local.node_ram_mb
  volume_gb   = local.node_volume_gb
  volume_type = "${local.node_volume_type}.${local.region}b"

  install_nvidia_device_plugin = false
  preemptible                  = false

  # См. комментарий у группы zone-a
  lifecycle {
    ignore_changes = [cpus, ram_mb]
  }
}
