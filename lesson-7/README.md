# Описание

В проекте через `docker-compose` разворачивается WordPress (в связке Nginx, PHP-FPM, MariaDB), filebeat, metricbeat, elasticsearch, kibana, heartbeat. Все настройки и конфигурационные файлы лежат по дерикториям как в прошлых уроках. В дериктории screenshots дашборды

# Запуск

```bash
sudo ./chown_data.sh
docker-compose up -d
```

# Скриншоты
inventory - Скриншот содержит состояние вкладки observability -> infrustructure, тоесть хост определился и его метрики идут
logs - Скриншот содержит состояние вкладки discovery с выбранным созданным dataview filebeat. Пробовал получить несуществующий файл, и это успешно улетело в логи. 