# Output the VPC ID from the module
output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

# Output Subnet A ID
output "subnet_a_id" {
  description = "The ID of Subnet A"
  value       = module.vpc.subnet_a_id
}

# Output Subnet B ID
output "subnet_b_id" {
  description = "The ID of Subnet B"
  value       = module.vpc.subnet_b_id
}

# Output Internet Gateway ID
output "internet_gateway_id" {
  description = "The ID of the Internet Gateway"
  value       = module.vpc.internet_gateway_id
}

# Output Route Table ID
output "route_table_id" {
  description = "The ID of the Route Table"
  value       = module.vpc.route_table_id
}

