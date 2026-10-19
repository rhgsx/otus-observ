# Описание

В проекте через `docker-compose` разворачивается WordPress (в связке Nginx, PHP-FPM, MariaDB), graylog-sidecar, graylog, opensearch, mongodb. В скриншотах лежат скриншоты с сайдкаром и стримами

# Запуск

```bash
sudo ./chown_data.sh
docker-compose up -d
```