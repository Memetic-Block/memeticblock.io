job "memeticblock.io-ssr" {
  datacenters = ["mb-hel"]
  type = "service"

  reschedule {
    attempts = 0
  }

  group "memeticblock.io-ssr-group" {
    count = 1

    update {
      stagger      = "30s"
      max_parallel = 1
      canary       = 1
      auto_revert  = true
      auto_promote = true
    }

    network {
      mode = "bridge"
      port "ssr" {
        to = 3000
        host_network = "wireguard"
      }
    }

    task "memeticblock.io-ssr-task" {
      driver = "docker"

      config {
        image = "${CONTAINER_REGISTRY_ADDR}/memetic-block/memeticblock.io:latest"
        force_pull = true
      }
      
      env {
        PHASE="stage"
      }

      template {
        data = <<-EOF
        {{- range service "container-registry" }}
        CONTAINER_REGISTRY_ADDR="{{ .Address }}:{{ .Port }}"
        {{- end }}
        EOF
        env = true
        destination = "local/env"
      }

      restart {
        attempts = 0
        mode = "fail"
      }

      resources {
        cpu    = 4096
        memory = 4096
      }

      service {
        name = "memeticblock-io-ssr"
        port = "ssr"

        tags = [
          "traefik.enable=true",
          "traefik.http.routers.memeticblock-io-ssr.entrypoints=https",          
          "traefik.http.routers.memeticblock-io-ssr.tls=true",
          "traefik.http.routers.memeticblock-io-ssr.tls.certresolver=memetic-block",
          "traefik.http.routers.memeticblock-io-ssr.rule=Host(`memeticblock.io`) || Host(`www.memeticblock.io`) || Host(`memeticblock.com`) || Host(`www.memeticblock.com`) || Host(`memeticblock.net`) || Host(`www.memeticblock.net`)"
        ]
      }
    }
  }
}
