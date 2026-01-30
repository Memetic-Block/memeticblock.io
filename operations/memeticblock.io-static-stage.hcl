job "memeticblock.io-static-stage" {
  datacenters = [ "mb-hel" ]
  type = "batch"

  constraint {
    attribute = "${meta.env}"
    value     = "edge-worker"
  }

  reschedule { attempts = 0 }

  group "memeticblock.io-static-stage-group" {
    count = 1

    task "memeticblock.io-static-stage-task" {
      driver = "docker"

      config {
        image = "${CONTAINER_REGISTRY_ADDR}/memetic-block/memeticblock.io:${VITE_VERSION_SHA}"
        force_pull = true
        entrypoint = [ "/workdir/entrypoint.sh" ]
        mount {
          type = "bind"
          source = "local/entrypoint.sh"
          target = "/workdir/entrypoint.sh"
          readonly = true
        }
      }

      restart {
        attempts = 0
        mode = "fail"
      }

      resources {
        cpu    = 512
        memory = 512
      }

      env {
        PHASE = "stage"
        PROJECT_NAME="memeticblock-io-stage"
        VITE_VERSION_SHA="[[.image_tag]]"
        VITE_FORM_API_URL = "https://forms.hel.memeticblock.net"
        VITE_TURNSTILE_SITEKEY = "0x4AAAAAACVZwzgy5BMUxnDC"
        VITE_SHOW_CONTACT_FORM="true"
      }

      vault { policies = [ "memeticblock-io-cloudflare-deployer" ] }

      template {
        data = <<-EOF
        {{- with secret "kv/memeticblock/cloudflare-deployer" }}
        CLOUDFLARE_ACCOUNT_ID={{ .Data.data.CLOUDFLARE_ACCOUNT_ID }}
        CLOUDFLARE_API_TOKEN={{ .Data.data.CLOUDFLARE_API_TOKEN }}
        {{- end }}
        EOF
        destination = "secrets/cloudflare.env"
        env = true
      }

      template {
        data = <<-EOF
        #!/bin/sh

        echo "Building memeticblock.io static files"
        npm run build

        echo "Deploying static site to Cloudflare Pages"
        npm run deploy:static
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
