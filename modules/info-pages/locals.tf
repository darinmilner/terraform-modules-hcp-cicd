locals {
  repos = { for k, v in
  data.terraform_remote_state.repos.outputs.clone_urls["prod"].clone_urls : k => v }
  username = data.github_user.current_user.name
  avatar   = data.github_user.current_user.avatar_url
}