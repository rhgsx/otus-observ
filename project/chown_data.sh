mkdir -p ./vm-mon/data/prometheus ./vm-mon/data/alertmanager ./vm-mon/data/grafana ./vm-mon/data/loki
chown 65534:65534 ./vm-mon/data/prometheus ./vm-mon/data/alertmanager
chown 472:472 ./vm-mon/data/grafana
chown 10001:10001 ./vm-mon/data/loki
