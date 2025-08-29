locals {
  repos = { for k, v in
  data.data.terraform_remote_state.repos.outputs.clone_urls["prod"].clone_urls : k => v }
}