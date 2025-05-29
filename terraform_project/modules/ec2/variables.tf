variable "vpc_id" {
  description = "VPC ID for the EC2 instance"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID for the EC2 instance"
  type        = string
}

variable "ami" {
  description = "AMI ID for the EC2 instance (Ubuntu)"
  type        = string
  default     = "ami-053b0d53c279acc90"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.small"
}
variable "key_name" {
  description = "The name of the SSH key pair to use"
  type        = string
}