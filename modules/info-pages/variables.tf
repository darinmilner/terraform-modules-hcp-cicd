variable "visibility" {
  type        = string
  description = "Repo visibility is public or private"
  default     = "public"
}

variable "run_provisioners" {
  type        = bool
  description = "Should Provisioners run"
  default     = false
}