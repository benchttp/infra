variable "github_token" {
  type = string
}

module "github" {
  source = "./terraform/github"

  github_token = var.github_token
}
