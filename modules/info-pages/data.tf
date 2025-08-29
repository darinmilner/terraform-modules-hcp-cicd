data "terraform_remote_state" "repos" {
  backend = "remote"

  config = {
    organization = "tf-2025-examprep"
    workspaces = {
      name = "cicd-repos"
    }
  }
}

data "github_user" "current_user" {
  username = ""
}