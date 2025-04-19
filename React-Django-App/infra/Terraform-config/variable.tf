variable "aws_region" {
  description = "AWS region to deploy resources"
  default     = "us-east-1"
}

variable "availability_zone" {
  description = "Availability Zone for subnet"
  default     = "us-east-1a"
}


# variable "ami_id" {
#   description = "AMI ID for EC2 instances"
#   default     = "ami-06c68f701d8090592"   ami-0c2b8ca1dad447f8a# Ubuntu 20.04 LTS 
# }

variable "instance_type" {
  description = "Instance type for EC2 instances"
  default     = "t3.medium"
}

variable "key_name" {
  description = "Name of the SSH key pair"
  type        = string
  default     = "project"
}

variable "my_ip" {
  description = "Your IP address for SSH access (CIDR notation)"
  type        = string
  default     = "0.0.0.0/0"
}