variable "name" {
  description = "The prefix for all resources in the VPC"
  type        = string
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "subnet_cidr" {
  description = "The CIDR block for the subnet"
  type        = string
}

variable "aws_region" {
  description = "The AWS region for the resources"
}