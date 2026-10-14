# Записи созданы в панели 13–14.10.2026, до появления в коде. Блоки import забирают их в состояние
# при первом apply; после него файл можно удалить.
# Для импорта провайдеру selectel нужны переменные окружения OS_DOMAIN_NAME, INFRA_PROJECT_ID
# и INFRA_REGION=ru-1.
import {
  to = selectel_domains_rrset_v2.records["joinrpg.ru./A"]
  id = "joinrpg.ru./joinrpg.ru./A"
}

import {
  to = selectel_domains_rrset_v2.records["kogda-igra.tsarevs.ru./A"]
  id = "tsarevs.ru./kogda-igra.tsarevs.ru./A"
}
