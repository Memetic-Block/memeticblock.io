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
        image = "ghcr.io/memetic-block/memeticblock.io:stage"
        force_pull = true
      }
      
      env {
        PHASE="live"
        DASHBOARD_VERSION="8dfedd92e26dcb3023fb93f3f173ea322d3132fa13d69e468e311afb36137caa"
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
          "traefik.http.routers.memeticblock-io-ssr.rule=Host(`memeticblock-io.hel.memeticblock.net`)"
        ]
      }
    }
  }
}
