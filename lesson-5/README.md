# Описание

В проекте через `docker-compose` разворачивается WordPress (в связке Nginx, PHP-FPM, MariaDB), система мониторинга Prometheus с набором экспортеров, Grafana и полный стек Zabbix. Согласно заданию был написан скрипт который находится в lesson-5/zabbix/scripts/otus_metrics.sh и параметры для инициализации что лежат в zabbix/userparams.conf. На скриншотах что лежат в screenshots/ виден дашборд с новыми метриками, а так же список сообщений бота с алертами.

# Запуск

```bash
docker-compose up -d
```

# Изменения 

Добавлены:
  - zabbix
  - скрипт сбора мок метрик