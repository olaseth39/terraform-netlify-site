variable "repo_name" {
  description = "GitHub repo name"
  default     = "terraform-static-site"
}

variable "site_name" {
  description = "Netlify site name (must be unique across Netlify)"
  default     = "terraform-static-site-demo"
  type = string
}

variable "github_owner" {
  description = "Your GitHub username or org"
}

variable "team_slug" {
  description = "Name of the team managing the site"
  type        = string
  default     = "olaseth39"  # Default name for the team, can be overridden
}

variable "netlify_token" {
  description = "Netlify personal access token"
  type        = string
  sensitive   = true
}

variable "github_token" {
  description = "GitHub personal access token"
  type        = string
  sensitive   = true
}