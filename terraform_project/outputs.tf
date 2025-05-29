
# Define outputs here if needed
output "vpc_id" {
  description = "The ID of the VPC created by the network module"
  value       = module.network.vpc_id
}

output "subnet_id" {
  description = "The ID of the subnet created by the network module"
  value       = module.network.subnet_id
}

output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = module.ec2.instance_id
}

output "instance_public_ip" {
  description = "The public IP of the EC2 instance"
  value       = module.ec2.public_ip
}

output "instance_profile_name" {
  description = "The name of the IAM instance profile"
  value       = module.iam.instance_profile_name
}

output "static_website_url" {
  description = "URL of the static website hosted on S3"
  value       = module.static_website.website_url
}
