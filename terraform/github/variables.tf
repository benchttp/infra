variable "github_token" {
  type = string
}

variable "github_webhook_activity_url" {
  type = string
}

variable "github_webhook_comments_url" {
  type = string
}

locals {
  repositories = {
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
      name        = "cobaye"
      description = "Local HTTP server exposing configurable endpoints to be benchmarked for testing purposes."
    },
  }

  main_branch = "main"
}
