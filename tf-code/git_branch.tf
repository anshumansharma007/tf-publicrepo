resource "github_branch" "development" {
  repository    = "tf-publicrepo"
  branch        = "dev"
  source_branch = "main"
}
