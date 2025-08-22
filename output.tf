output "site_url" {
  description = "The Netlify live site URL"
  value = "https://${data.netlify_site.example.custom_domain != "" ? data.netlify_site.example.custom_domain : "${data.netlify_site.example.name}.netlify.app"}"
}

output "github_repo_url" {
  description = "GitHub repository URL"
  value       = github_repository.site_repo.html_url
}


