output "bucket_ids" {
  description = "IDs of the S3 buckets, keyed by bucket name"
  value       = { for name, mod in module.infra : name => mod.bucket_id }
}

output "bucket_arns" {
  description = "ARNs of the S3 buckets, keyed by bucket name"
  value       = { for name, mod in module.infra : name => mod.bucket_arn }
}

output "bucket_domain_names" {
  description = "Domain names of the S3 buckets, keyed by bucket name"
  value       = { for name, mod in module.infra : name => mod.bucket_domain_name }
}