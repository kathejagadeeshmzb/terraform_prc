# Output the VPC ID
output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}

# Output Subnet A ID
output "subnet_a_id" {
  description = "The ID of Subnet A"
  value       = aws_subnet.subnet_a.id
}

# Output Subnet B ID
output "subnet_b_id" {
  description = "The ID of Subnet B"
  value       = aws_subnet.subnet_b.id
}

# Output Internet Gateway ID
output "internet_gateway_id" {
  description = "The ID of the Internet Gateway"
  value       = aws_internet_gateway.gw.id
}

# Output Route Table ID
output "route_table_id" {
  description = "The ID of the Route Table"
  value       = aws_route_table.rtable.id
}

