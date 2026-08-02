aws_region         = "eu-west-1"
bucket_names       = ["terraform-dev-testbucket-0000"]
environment        = "dev"
versioning_enabled = true

tags = {
  ManagedBy = "terraform"
  Project   = "Dole-Terraform"
  Repo-Name   = "S3-Infa"
}