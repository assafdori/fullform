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

variable "secondary_vpc_cidr_block" {
  description = "CIDR block for the VPC"
  default     = "192.168.0.0/16"
}

variable "secondary_subnet_cidr_block" {
  description = "CIDR block for the subnet"
  default     = "192.168.0.0/24"
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
  default     = "ami-07fa59ce6da2fe3fe"
}

variable "instance_type" {
  description = "Instance type"
  default     = "t2.micro"
}

variable "key_name" {
  description = "Key pair name"
  default     = "mongo-keypair"
}
