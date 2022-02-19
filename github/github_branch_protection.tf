resource "github_branch_protection" "shared_rules" {
  for_each         = local.repositories
  repository_id    = each.value.name
  pattern          = local.main_branch
  enforce_admins   = true
  allows_deletions = false

  required_pull_request_reviews {
    required_approving_review_count = 1
    dismiss_stale_reviews           = false
  }
}
