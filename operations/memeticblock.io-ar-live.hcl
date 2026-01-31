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
        entrypoint = [ "/workdir/entrypoint.sh" ]
        mount {
          type = "bind"
          source = "local/entrypoint.sh"
          target = "/workdir/entrypoint.sh"
          readonly = true
        }
      }

      env {
        PHASE="live"
        GATEWAY="https://arweave.net"
        BUNDLER="https://upload.ardrive.io"
        VITE_VERSION_SHA="[[.image_tag]]"
      }

      template {
        data = <<-EOF
        #!/bin/sh

        echo "Building memeticblock.io static files"
        npm run build

        echo "Deploying static site to Arweave"
        npm run deploy:arweave
        EOF
        destination = "local/entrypoint.sh"
        perms = "0755"
      }

      vault { policies = ["memeticblock-arns-deployer"] }

      template {
        data = <<-EOH
        {{- with secret "kv/memeticblock/permaweb_deployer" }}
        PRIVATE_KEY_BASE64="{{ .Data.data.b64jwk }}"
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
