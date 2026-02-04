variable "instance_name" {
  description = "Name of EC2 instance"
  default     = "strapi-ec2"
}

variable "ami_id" {
  description = "Amazon Linux 2 AMI ID"
  default     = "ami-0f5ee92e2d63afc18"
}

variable "key_name" {
  description = "Key pair name for EC2"
  default     = "strapi-key"
}

variable "subnet_id" {
  description = "Subnet ID where EC2 will be launched"
}

variable "security_group_ids" {
  description = "Security Group IDs"
  type        = list(string)
}
