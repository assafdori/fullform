variable "aws_region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "env" {
  description = "Environment"
  default     = "dev"
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "private_subnet_cidr_block" {
  description = "CIDR block for the subnet"
  default     = "10.0.0.0/24"
}

variable "public_subnet_cidr_block" {
  description = "CIDR block for the subnet"
  default     = "10.0.100.0/24"
}

variable "ami" {
  description = "AMI ID"
  default     = "ami-0b5eea76982371e91"
}

variable "instance_type" {
  description = "Instance type"
  default     = "t2.micro"
}

variable "key_name" {
  description = "Key pair name"
  default     = "mongo-keypair"
}

