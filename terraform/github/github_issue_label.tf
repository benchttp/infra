resource "github_issue_label" "must_have" {
  for_each   = var.repositories
  repository = each.value.name
  name       = "must have"
  color      = "D93F0B"
}

resource "github_issue_label" "nice_to_have" {
  for_each   = var.repositories
  repository = each.value.name
  name       = "nice to have"
  color      = "F9D0C4"
}
