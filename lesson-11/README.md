# Описание

В проекте через `docker-compose` разворачивается WordPress (в связке Nginx, PHP-FPM, MariaDB), filebeat, vector, loki, grafana. В screenshots лежит скрин с логами из loki 

# Запуск

```bash
sudo ./chown_data.sh
docker-compose up -d
```