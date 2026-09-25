terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.primary
  shared_config_files      = ["~/.aws/config"]
  shared_credentials_files = ["~/.aws/credentials"]
  profile                  = "Vscode-TERRAFORM"
  alias = "primary"
}

provider "aws" {
  region = var.secondary
  shared_config_files      = ["~/.aws/config"]
  shared_credentials_files = ["~/.aws/credentials"]
  profile                  = "Vscode-TERRAFORM"
  alias = "secondary"
}

provider "aws" {
  region = var.tertiary
  shared_config_files      = ["~/.aws/config"]
  shared_credentials_files = ["~/.aws/credentials"]
  profile                  = "Vscode-TERRAFORM"
  alias = "tertiary"
}