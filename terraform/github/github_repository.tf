resource "github_repository" "repositories" {
  for_each      = var.repositories
  name          = each.value.name
  description   = each.value.description
  has_downloads = true
  has_issues    = true
  has_projects  = true
  has_wiki      = true
}
