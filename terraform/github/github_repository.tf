resource "github_repository" "repositories" {
  for_each      = local.repositories
  name          = each.value.name
  description   = each.value.description
  has_downloads = true
  has_issues    = true
  has_projects  = true
  has_wiki      = true
}
