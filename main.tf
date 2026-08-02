terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "infra" {
  source = "./modules/s3"

  for_each = toset(var.bucket_names)

  bucket_name        = each.value
  environment        = var.environment
  versioning_enabled = var.versioning_enabled
  tags               = var.tags
}