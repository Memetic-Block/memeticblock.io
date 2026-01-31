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
        image = "${CONTAINER_REGISTRY_ADDR}/memetic-block/memeticblock.io:${VITE_VERSION_SHA}"
        entrypoint = ["npm"]
        command = "run"
        args = ["deploy:arweave"]
      }

      env {
        PHASE="live"
        GATEWAY="https://arweave.net"
        BUNDLER="https://upload.ardrive.io"
        VITE_VERSION_SHA="[[.image_tag]]"
      }

      vault { policies = ["memeticblock-arns-deployer"] }

      template {
        data = <<-EOH
        {{- with secret "kv/memeticblock/permaweb_deployer" }}
        PRIVATE_KEY="{{ .Data.data.b64jwk }}"
        {{- end }}
        EOH
        destination = "secrets/file.env"
        env         = true
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
        cpu    = 512
        memory = 512
      }
    }
  }
}
