module "repos" {
  source   = "./dev-repos"
  for_each = var.environments
  repo_max = 5
  env      = each.key

  repo_names = {
    for row in csvdecode(file("repos.csv")) :
    row["environment"] => {
      for key, value in row :
      key => contains(["pages"], key) ?
      (lower(value) == "true" ? true : false) :
      value
    }
  }
  username         = local.username
  run_provisioners = false
}

module "deploy-keys" {
  source     = "./deploy-keys"
  for_each   = var.deploy_key ? toset(flatten([for k, v in module.repos : keys(v.clone_urls) if k == "dev"])) : []
  repo_name  = each.key
  depends_on = [module.repos]
}
