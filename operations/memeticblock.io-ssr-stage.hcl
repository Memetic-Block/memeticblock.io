job "memeticblock.io-ssr-stage" {
  datacenters = ["mb-hel"]
  type = "service"

  reschedule {
    attempts = 0
  }

  group "memeticblock.io-ssr-stage-group" {
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
        to           = 3000
        host_network = "wireguard"
      }
    }

    task "memeticblock.io-ssr-stage-task" {
      driver = "docker"

      config {
        image = "${CONTAINER_REGISTRY_ADDR}/memetic-block/memeticblock.io:[[.image_tag]]"
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
        mode     = "fail"
      }

      resources {
        cpu    = 4096
        memory = 4096
      }

      service {
        name = "memeticblock-io-ssr-stage"
        port = "ssr"

        check {
          type     = "http"
          port     = "ssr"
          path     = "/"
          interval = "10s"
          timeout  = "5s"
        }

        tags = [
          "traefik.enable=true",
          "traefik.http.routers.memeticblock-io-ssr-stage.entrypoints=https",
          "traefik.http.routers.memeticblock-io-ssr-stage.tls=true",
          "traefik.http.routers.memeticblock-io-ssr-stage.tls.certresolver=memetic-block",
          "traefik.http.routers.memeticblock-io-ssr-stage.rule=Host(`memeticblock-io-stage.hel.memeticblock.net`)"
        ]
      }
    }
  }
}
