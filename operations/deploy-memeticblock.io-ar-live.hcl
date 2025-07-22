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
        image = "${CONTAINER_REGISTRY_ADDR}/memetic-block/memeticblock.io:39dd001700cd3556e63c1817910624b35c335a06"
        entrypoint = ["npm"]
        command = "run"
        args = ["deploy"]
      }

      vault { policies = ["memeticblock-arns-deployer"] }

      template {
        data = <<-EOH
        {{- with secret "kv/memeticblock/permaweb_deployer" }}
        PERMAWEB_KEY="{{ .Data.data.b64jwk }}"
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
      
      env {
        PHASE="live"
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
