terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.63.0"
    }
  }
}

provider "aws" {
  region = var.region
  default_tags {
    tags = {
      Environment = var.environment
      Team        = var.team
      Application = var.project
      Platform    = var.platform
      Terraform   = "true"
    }
  }
}
