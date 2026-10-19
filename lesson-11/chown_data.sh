mkdir -p ./data/logs/nginx ./data/logs/php-fpm ./data/logs/mysql ./data/loki ./data/grafana
chown 999:999 ./data/logs/mysql
chown 10001:10001 ./data/loki
chown 472:0 ./data/grafana
