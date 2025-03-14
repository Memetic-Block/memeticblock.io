job "deploy-memeticblock.io-ar" {
  datacenters = ["mb-hel"]
  type = "batch"

  reschedule {
    attempts = 0
  }

  group "deploy-memeticblock.io-ar-group" {
    count = 1

    task "deploy-memeticblock.io-ar-task" {
      driver = "docker"

      config {
        image = "ghcr.io/memetic-block/memeticblock.io:stage"
        force_pull = true
        entrypoint = ["npm"]
        command = "run"
        args = ["deploy"]
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
    }
  }
}
