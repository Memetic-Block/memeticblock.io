job "memeticblock.io-static-stage" {
  datacenters = [ "mb-hel" ]
  type = "batch"

  reschedule { attempts = 0 }

  group "memeticblock.io-static-stage-group" {
    count = 1

    task "memeticblock.io-static-stage-task" {
      driver = "docker"

      config {
        image = "${CONTAINER_REGISTRY_ADDR}/memetic-block/memeticblock.io:[[.image_tag]]"
        force_pull = true
        entrypoint = [ "/workdir/entrypoint.sh" ]
        mount {
          type = "bind"
          source = "local/entrypoint.sh"
          target = "/workdir/entrypoint.sh"
          readonly = true
        }
        mount {
          type = "bind"
          source = "secrets/rclone.conf"
          target = "/root/.config/rclone/rclone.conf"
          readonly = true
        }
      }

      restart {
        attempts = 0
        mode = "fail"
      }

      resources {
        cpu    = 4096
        memory = 4096
      }

      env {
        PHASE = "stage"
        DEPLOY_BUCKET = "memeticblock-io-stage"
        VITE_FORM_API_URL = "https://forms.hel.memeticblock.net"
        VITE_TURNSTILE_SITEKEY = "0x4AAAAAACVZwzgy5BMUxnDC"
        VITE_SHOW_CONTACT_FORM="true"
      }

      vault { policies = [ "memeticblock-io-cloudflare-deployer" ] }

      template {
        data = <<-EOF
        {{ with secret "kv/memeticblock/cloudflare-deployer" }}[r2]
        type = s3
        provider = Cloudflare
        region = auto
        endpoint = {{ .Data.data.ENDPOINT }}
        access_key_id = {{ .Data.data.ACCESS_KEY_ID }}
        secret_access_key = {{ .Data.data.SECRET_ACCESS_KEY }}
        {{ end }}
        EOF
        destination = "secrets/rclone.conf"
      }

      template {
        data = <<-EOF
        #!/bin/sh

        echo "Building memeticblock.io static files"
        npm run generate

        echo "Fixing permissions on generated files"
        find dist -type f -exec chmod 644 {} \;
        find dist -type d -exec chmod 755 {} \;

        echo "Listing contents of dist"
        ls -la dist

        echo "Syncing memeticblock.io static files to cloudflare r2"
        rclone sync dist r2:${DEPLOY_BUCKET}/ -v --progress
        EOF
        destination = "local/entrypoint.sh"
        perms = "0755"
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
    }
  }
}
