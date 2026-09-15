
variable "region" {
  description = "AWS region for backend resources"
  type        = string
  default     = "us-east-1"
}

variable "github_repository_owner" {
  description = "GitHub repository owner"
  type        = string
}

variable "github_repository_name" {
  description = "GitHub repository name"
  type        = string
}

variable "github_repository_owner_id" {
  description = "Immutable GitHub repository owner ID"
  type        = string
}

variable "github_repository_id" {
  description = "Immutable GitHub repository ID"
  type        = string
}

variable "github_branches" {
  description = "GitHub branches allowed to assume the Terraform role"
  type        = list(string)
  default     = ["main"]
}

variable "github_environments" {
  description = "GitHub environments allowed to assume the Terraform role"
  type        = list(string)
  default     = ["dev", "prod"]
}
