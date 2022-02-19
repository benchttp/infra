terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.19.1"
    }
  }
}

provider "github" {
  token = var.github_token
  owner = "benchttp"
}
