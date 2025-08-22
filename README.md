# terraform-netlify-site
Static site deployed via GitHub + Netlify
# 🚀 Terraform Netlify Site Deployment

## 📖 Overview
This project automates the deployment of a static website to Netlify using Terraform. It provisions a GitHub repository, uploads your site code, and connects the repo to Netlify for continuous deployment. Remote state is securely managed via HCP Terraform.

## 🎯 Objectives
- Deploy a static frontend site to Netlify via GitHub integration.
- Automate GitHub repository creation and Netlify site setup using Terraform.
- Configure HCP Terraform as the remote backend.
- Ensure uniqueness in site naming, design, or functionality.
- Provide clear documentation for easy replication.

## ⚙️ Setup Instructions

### 📋 Prerequisites
Make sure you have the following:
- [Terraform](https://developer.hashicorp.com/terraform/downloads) installed (v1.0 or higher)
- A Netlify account and API token
- A GitHub account and Personal Access Token (with `repo` scope)
- An HCP Terraform account and organization

### 🛠️ Steps

1. **Clone this repository**
   ```bash
   git clone https://github.com/<your-username>/<your-repo-name>.git
   cd <your-repo-name>
