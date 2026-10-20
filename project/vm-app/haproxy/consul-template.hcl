consul {
  address = "consul-agent:8500"
}

template {
  source      = "/etc/haproxy/haproxy.cfg.ctmpl"
  destination = "/tmp/haproxy.cfg"
}

exec {
  command       = ["haproxy", "-W", "-db", "-f", "/tmp/haproxy.cfg"]
  reload_signal = "SIGUSR2"
}
