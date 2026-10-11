# Описание

В проекте через `docker-compose` разворачивается WordPress (в связке Nginx, PHP-FPM, MariaDB), fluent-bit, opensearch, opensearch-dashboards, data-prepper. 

# Запуск

```bash
sudo ./chown_data.sh
docker-compose up -d
```