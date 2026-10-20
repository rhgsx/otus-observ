# Описание

Проектная работа. Инфраструктура WordPress разнесена на 3 "виртуалки", каждая - отдельный `docker-compose` в общей сети `infra`:

Метрики: Prometheus -> VictoriaMetrics, алерты считает vmalert и шлёт в Alertmanager. Логи: vector на каждой VM забирает логи контейнеров своей VM, парсит и шлёт в Loki.

Вместо Patroni + PostgreSQL взята Galera, потому что WordPress не умеет в PostgreSQL. Вместо pgbouncer - HAProxy, который consul-template перегенерирует при изменении состава кластера.

# Запуск

```bash
docker network create infra
sudo ./chown_data.sh
docker-compose -f vm-db/docker-compose.yml up -d
docker-compose -f vm-app/docker-compose.yml up -d --build
docker-compose -f vm-mon/docker-compose.yml up -d
