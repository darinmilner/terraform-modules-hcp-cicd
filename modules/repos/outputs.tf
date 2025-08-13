output "repo_info" {
  description = "Repo Information."
  value       = { for k, v in module.repos : k => v.clone_urls }
}

output "deploy_key_id" {
  description = "GitHub deploy key ID"
  value       = module.deploy-keys
}

output "repo_list" {
  value = flatten([for k, v in module.repos : keys(v.clone_urls) if k == "dev"])
}

output "repo_page_url" {
  description = "Page Url for repos"
  value       = { for k, v in module.repos["dev"].clone_urls : k => v }
}

output "clone_urls" {
  value = module.repos
}