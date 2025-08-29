variable "username" {
  type        = string
  description = "Github Username"
}

variable "repo_name" {
  type        = string
  description = "Repo Name"
}

variable "visibility" {
  type        = string
  description = "Repo visibility is public or private"
  default     = "public"
}

variable "avatar" {
  type        = string
  description = "Avatar for github User"
}

variable "run_provisioners" {
  type        = bool
  description = "Should Provisioners run"
  default     = false
}