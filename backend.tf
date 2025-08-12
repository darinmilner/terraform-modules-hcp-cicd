terraform {
  cloud {
    organization = "tf-2025-examprep"

    workspaces {
      name = "dev-github-project"
    }
  }
}
