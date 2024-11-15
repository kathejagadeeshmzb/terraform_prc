# Define input variables for creating a VPC
variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "vpc_name" {
  description = "Name for the VPC"
  type        = string
}

variable "subnet_a_cidr" {
  description = "CIDR block for subnet A"
  type        = string
}

variable "subnet_b_cidr" {
  description = "CIDR block for subnet B"
  type        = string
}

variable "subnet_a_name" {
  description = "Name for subnet A"
  type        = string
}

variable "subnet_b_name" {
  description = "Name for subnet B"
  type        = string
}

variable "subnet_a_az" {
  description = "Availability Zone for subnet A"
  type        = string
}

variable "subnet_b_az" {
  description = "Availability Zone for subnet B"
  type        = string
}

variable "igw_name" {
  description = "Name for the Internet Gateway"
  type        = string
}

variable "rtable_name" {
  description = "Name for the route table"
  type        = string
}

