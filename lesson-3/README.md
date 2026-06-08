# Описание

В проекте через `docker-compose` разворачивается WordPress (в связке Nginx, PHP-FPM, MariaDB) и система мониторинга Prometheus с набором экспортеров. Согласно заданию, Prometheus настроен на сбор метрик с интервалом раз в 5 секунд.

# Запуск

```bash
docker-compose up -d
```

# Изменения 

Добавлены vmalert и alertmanager.

Добавлены базовые алерты на основе Node exporter

Добавлены 2 example ресивера в алерт менеджер и роутинг по severity