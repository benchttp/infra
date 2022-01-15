resource "github_repository_webhook" "discord_report" {
  for_each   = local.repositories
  repository = each.value.name
  active     = true
  events = [
    "push",
    "pull_request",
    "release",
  ]
  configuration {
    url          = var.github_webhook_activity_url
    content_type = "json"
    insecure_ssl = false
  }
}

resource "github_repository_webhook" "discord_report_comments" {
  for_each   = local.repositories
  repository = each.value.name
  active     = true
  events = [
    "commit_comment",
    "issue_comment",
    "discussion",
    "discussion_comment",
    "pull_request_review",
    "pull_request_review_comment",
  ]
  configuration {
    url          = var.github_webhook_comments_url
    content_type = "json"
    insecure_ssl = false
  }
}
