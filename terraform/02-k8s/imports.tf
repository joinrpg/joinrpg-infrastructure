# Кластер создан в панели до появления этого кода. Блоки import забирают его в состояние
# при первом apply; после него файл можно удалить.
# Для импорта провайдеру selectel нужны переменные окружения
# OS_DOMAIN_NAME, INFRA_PROJECT_ID и INFRA_REGION.
import {
  to = selectel_mks_cluster_v1.k8s
  id = "df3a30d3-8f59-4a12-aae3-67072ce11434"
}

# ID группы нод: <ID кластера>/<ID группы>
import {
  to = selectel_mks_nodegroup_v1.zone-a
  id = "df3a30d3-8f59-4a12-aae3-67072ce11434/6276436b-7ef9-4577-9092-fde5d695ca5c"
}

import {
  to = selectel_mks_nodegroup_v1.zone-b
  id = "df3a30d3-8f59-4a12-aae3-67072ce11434/d383b0fc-51be-4230-b8a4-d14fad2579e9"
}
