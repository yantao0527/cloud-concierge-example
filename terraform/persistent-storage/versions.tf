terraform {
  required_version = "~> 1.5.5"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.59.0"
    }
  }

  cloud {
    organization = "frank-cloud"

    workspaces {
      name = "aws-persistent-storage-dev"
    }
  }
}
