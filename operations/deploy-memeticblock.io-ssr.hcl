job "deploy-memeticblock.io-ssr" {
  datacenters = ["mb-hel"]
  type = "service"

  reschedule {
    attempts = 0
  }

  group "deploy-memeticblock.io-ssr-group" {
    count = 1

    network {
      mode = "bridge"
      port "ssr" {
        to = 3000
        host_network = "wireguard"
      }
    }

    task "deploy-memeticblock.io-ssr-task" {
      driver = "docker"

      config {
        image = "ghcr.io/memetic-block/memeticblock.io:[[.commit_sha]]"
        force_pull = true
      }

      vault { policies = ["memeticblock-arns-deployer"] }

      template {
        data = <<-EOH
        {{ with secret "kv/memeticblock/permaweb_deployer" }}
          PERMAWEB_KEY="{{ .Data.data.b64jwk }}"
        {{ end }}
        EOH
        destination = "secrets/file.env"
        env         = true
      }
      
      env {
        PHASE="live"
        DASHBOARD_VERSION="[[.commit_sha]]"
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
