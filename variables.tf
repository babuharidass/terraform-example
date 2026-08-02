variable "aws_region" {
  description = "AWS region to deploy into"
  type        = string
  default     = "us-east-1"
}

variable "bucket_names" {
  description = "Names of the S3 buckets to create"
  type        = list(string)
}

variable "environment" {
  description = "Environment name (e.g. dev, test, prod)"
  type        = string
}

variable "versioning_enabled" {
  description = "Whether to enable versioning on the bucket"
  type        = bool
  default     = true
}

variable "tags" {
  description = "Additional tags to apply to the bucket"
  type        = map(string)
  default     = {}
}