output "website_url" {
  description = "The endpoint of the static website hosted on S3"
  value       = aws_s3_bucket_website_configuration.website_config.website_endpoint
}
