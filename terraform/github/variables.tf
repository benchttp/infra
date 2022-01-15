variable "github_token" {
  type = string
}

variable "github_webhook_url" {
  type = string
}

variable "repositories" {
  type = map(object({
    name        = string
    description = string
  }))
  default = {
    "infra" = {
      name        = "infra"
      description = "Infrastructure code for benchttp."
    },
    "runner" = {
      name        = "runner"
      description = "Local executable to run benchmarks."
    },
    "server" = {
      name        = "server"
      description = "REST API for benchttp."
    },
    "webapp" = {
      name        = "webapp"
      description = "Front-end application for benchttp users."
    },
    "testing_server" = {
      name        = "testing-server"
      description = "Local HTTP server to run benchmarks on configurable endpoints."
    },
  }
}
