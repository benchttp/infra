resource "github_repository_webhook" "discord_report" {
  for_each   = toset(var.repositories)
  repository = each.value
  active     = true
  events = [
    "push",
    "pull_request",
    "pull_request_review",
    "pull_request_review_comment",
    "release",
  ]
  configuration {
    url          = var.github_webhook_url
    content_type = "json"
    insecure_ssl = false
  }
}
