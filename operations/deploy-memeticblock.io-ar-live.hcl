job "deploy-memeticblock.io-ar-live" {
  datacenters = ["mb-hel"]
  type = "batch"

  reschedule {
    attempts = 0
  }

  group "deploy-memeticblock.io-ar-live-group" {
    count = 1

    task "deploy-memeticblock.io-ar-live-task" {
      driver = "docker"

      config {
        image = "${CONTAINER_REGISTRY_ADDR}/memetic-block/memeticblock.io:[[.image_tag]]"
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
        PHASE="live-ar"
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
