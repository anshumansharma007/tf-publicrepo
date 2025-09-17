# Creating a GitHub Repository with Terraform

This guide shows you how to create a GitHub repository using Terraform infrastructure as code.

## Prerequisites

1. **GitHub Personal Access Token (PAT)**
   - Go to GitHub Settings → Developer Settings → Personal Access Tokens
   - Generate a new token with appropriate repository permissions
   - Keep your token secure and never commit it to version control

## Configuration

```hcl
terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

provider "github" {
  token = var.github_token  # Use variable instead of hardcoded token
}

resource "github_repository" "tf-code" {
  name        = "tf-publicrepo"
  description = "My awesome Terraform codes"

  visibility = "public"

  # Initialize with README
  auto_init = true
  
  # Set default branch
  default_branch = "main"
}
