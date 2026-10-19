FROM debian:12-slim

RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates curl \
    && curl -fsSL -o /tmp/sidecar.deb https://github.com/Graylog2/collector-sidecar/releases/download/1.5.6/graylog-sidecar_1.5.6-1_amd64.deb \
    && dpkg -i /tmp/sidecar.deb \
    && rm /tmp/sidecar.deb \
    && rm -rf /var/lib/apt/lists/*

CMD ["graylog-sidecar", "-c", "/etc/graylog/sidecar/sidecar.yml"]
