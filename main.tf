terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
    netlify = {
      source  = "netlify/netlify"
      version = "~> 0.2.0"
    }
  }

  cloud {                         # tells Terraform where to store its state file remotely
      organization = "dev_seth"   # HCP Terraform organization name
      workspaces {
      name = "netlify-site"
    }
  }
}

provider "github" {
  token = var.github_token
  owner = var.github_owner
}

provider "netlify" {
  token = var.netlify_token
}


# -----------------------------
# Create GitHub repository
# -----------------------------
resource "github_repository" "site_repo" {
  name        = "terraform-netlify-site"
  description = "Static site deployed via GitHub + Netlify"
  visibility  = "public"
  auto_init   = true
}

# -----------------------------
# Upload index.html
# -----------------------------
resource "github_repository_file" "index_html" {
  repository          = github_repository.site_repo.name
  file                = "index.html"
  content             = file("${path.module}/index.html")
  branch              = "main"
  commit_message      = "Add index.html"
  overwrite_on_create = true
}

# -----------------------------
# Upload style.css
# -----------------------------
resource "github_repository_file" "style_css" {
  repository          = github_repository.site_repo.name
  file                = "style.css"
  content             = file("${path.module}/style.css")
  branch              = "main"
  commit_message      = "Add style.css"
  overwrite_on_create = true
}

# -----------------------------
# Upload script.js
# -----------------------------
resource "github_repository_file" "script_js" {
  repository          = github_repository.site_repo.name
  file                = "script.js"
  content             = file("${path.module}/script.js")
  branch              = "main"
  commit_message      = "Add script.js"
  overwrite_on_create = true
}


# -----------------------------
# Reference Netlify site
# (connect via UI, then Terraform can read info)
# -----------------------------
data "netlify_site" "example" {
  name = var.site_name # Change to your actual Netlify site name
  team_slug = var.team_slug
}

