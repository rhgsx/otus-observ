server           = true
bootstrap_expect = 3
retry_join       = ["consul1", "consul2", "consul3"]
client_addr      = "0.0.0.0"

ui_config {
  enabled = true
}

telemetry {
  prometheus_retention_time = "60s"
  disable_hostname          = true
}
