variable "github_token" {
  type = string
}

variable "github_webhook_activity_url" {
  type = string
}

variable "github_webhook_comments_url" {
  type = string
}

module "github" {
  source = "./terraform/github"

  github_token                = var.github_token
  github_webhook_activity_url = var.github_webhook_activity_url
  github_webhook_comments_url = var.github_webhook_comments_url
}
