aws_region         = "eu-west-1"
bucket_name        = "terraform-dev-test-bucket"
environment        = "dev"
versioning_enabled = true

tags = {
  ManagedBy = "terraform"
  Project   = "my-app"
}