# Описание

В проекте через `docker-compose` разворачивается WordPress (в связке Nginx, PHP-FPM, MariaDB), telegraf, influxdb, chronograf. Все настройки и конфигурационные файлы лежат по дерикториям как и в прошлых уроках. В дериктории screenshots дашборд и правила алертинга

# Запуск

```bash
docker-compose up -d
```

# Изменения 

Добавлены:
  - zabbix
  - скрипт сбора мок метрик