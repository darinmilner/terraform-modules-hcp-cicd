variable "deploy_key" {
  type        = bool
  description = "Variable to create deploy keys."
  default     = false
}

variable "environments" {
  type        = set(string)
  description = "Set of environments for deployment"
  default     = ["dev", "prod"]
}