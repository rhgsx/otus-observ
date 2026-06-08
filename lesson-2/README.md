# Описание

В проекте через `docker-compose` разворачивается WordPress (в связке Nginx, PHP-FPM, MariaDB) и система мониторинга Prometheus с набором экспортеров. Согласно заданию, Prometheus настроен на сбор метрик с интервалом раз в 5 секунд.

# Запуск

```bash
docker-compose up -d
```

# Изменения 

Для долгосрочного хранения добавлена Victoria Metrics, с автоматической дедупликацией, 

Для пуша метрик в викторию prometheus использует следующую дериктиву:
```yaml
remote_write:
  - url: "http://victoria-metrics:8428/api/v1/write"
```

Для добавления всем метрикам метки - `site: prod` используется prometheus параметр конфига указанный ниже
```yaml
global:
  external_labels:
    site: prod
```