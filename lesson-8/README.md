# Описание

В проекте через `docker-compose` разворачивается WordPress (в связке Nginx, PHP-FPM, MariaDB), filebeat, elasticsearch, kibana, logstash, vector. 

# Запуск

```bash
sudo ./chown_data.sh
docker-compose up -d
```