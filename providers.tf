terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.63.0"
    }

  docker = {
      source  = "kreuzwerker/docker"
      version = "2.11.0"
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

provider "docker" {
registry_auth{
address = local.aws_ecr_url
username = data.aws_ecr_authorization_token.token.user_name
password = data.aws_ecr_authorization_token.token.password
}

}
