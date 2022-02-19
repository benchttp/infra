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
    "cobaye" = {
      name        = "cobaye"
      description = "Local HTTP server exposing configurable endpoints to be benchmarked for testing purposes."
    },
    "webapp" = {
      name        = "webapp"
      description = "Front-end application for benchttp users."
    },
    "worker" = {
      name        = "worker"
      description = "Remote worker to process benchmark reports."
    },
  }

  main_branch = "main"
}
