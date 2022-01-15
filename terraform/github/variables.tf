variable "github_token" {
  type = string
}

variable "repositories" {
  type = list(string)
  default = [
    "infra",
    "runner",
    "server",
    "webapp",
    "testing-server",
  ]
}
