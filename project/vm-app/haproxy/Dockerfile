FROM hashicorp/consul-template:0.43 AS consul-template

FROM haproxy:3.2
COPY --from=consul-template /bin/consul-template /usr/local/bin/consul-template

CMD ["consul-template", "-config", "/etc/haproxy/consul-template.hcl"]
