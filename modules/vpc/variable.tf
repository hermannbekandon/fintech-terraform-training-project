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

variable "availability_zone" {
  description = "The availability zone for the subnet"
  type        = string
  
}
