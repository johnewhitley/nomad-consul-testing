job "httpd" {
  datacenters = ["dc1"]
  type = "service"
  group "webs" {
    count = 3
      task "my-httpd" {
        driver = "docker"
          config {
            port_map = {
              http = 80
            }
            image = "j0hnewhitley/my-httpd:latest"
                  }
  resources {
  cpu    = 100 # MHz
  memory = 100 # MB
  network {
    mbits = 1
    port "http" {}
        }
      }
    }
  }
}

