terraform {
  required_providers {
    required_version = "~> 1.14.5"
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}