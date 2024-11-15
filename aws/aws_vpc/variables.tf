# Define root input variables
variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
  description = "Name for the VPC"
  type        = string
  default     = "MyVPC"
}

variable "subnet_a_cidr" {
  description = "CIDR block for subnet A"
  type        = string
  default     = "10.0.1.0/24"
}

variable "subnet_b_cidr" {
  description = "CIDR block for subnet B"
  type        = string
  default     = "10.0.2.0/24"
}

variable "subnet_a_name" {
  description = "Name for subnet A"
  type        = string
  default     = "SubnetA"
}

variable "subnet_b_name" {
  description = "Name for subnet B"
  type        = string
  default     = "SubnetB"
}

variable "subnet_a_az" {
  description = "Availability Zone for subnet A"
  type        = string
  default     = "us-west-2a"
}

variable "subnet_b_az" {
  description = "Availability Zone for subnet B"
  type        = string
  default     = "us-west-2b"
}

variable "igw_name" {
  description = "Name for the Internet Gateway"
  type        = string
  default     = "MyIGW"
}

variable "rtable_name" {
  description = "Name for the route table"
  type        = string
  default     = "MyRouteTable"
}

