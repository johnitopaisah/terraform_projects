output "private_key_path" {
  description = "Path to the private key file"
  value       = "${path.module}/${var.key_name}.pem"
}

output "key_name" {
  value = aws_key_pair.this.key_name
}