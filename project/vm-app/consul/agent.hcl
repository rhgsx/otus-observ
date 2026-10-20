retry_join  = ["consul1", "consul2", "consul3"]
client_addr = "0.0.0.0"

telemetry {
  prometheus_retention_time = "60s"
  disable_hostname          = true
}

services = [
  {
    name    = "nginx"
    address = "nginx"
    port    = 80
    check = {
      http     = "http://nginx/stub_status"
      interval = "10s"
    }
  },
  {
    name    = "php-fpm"
    address = "wordpress"
    port    = 9000
    check = {
      tcp      = "wordpress:9000"
      interval = "10s"
    }
  }
]
