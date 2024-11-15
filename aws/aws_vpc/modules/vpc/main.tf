# Create a VPC
resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr_block
  enable_dns_support = true
  enable_dns_hostnames = true

  tags = {
    Name = var.vpc_name
  }
}

# Create Subnet A
resource "aws_subnet" "subnet_a" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.subnet_a_cidr
  availability_zone       = var.subnet_a_az
  map_public_ip_on_launch = true

  tags = {
    Name = var.subnet_a_name
  }
}

# Create Subnet B
resource "aws_subnet" "subnet_b" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.subnet_b_cidr
  availability_zone       = var.subnet_b_az
  map_public_ip_on_launch = true

  tags = {
    Name = var.subnet_b_name
  }
}

# Create Internet Gateway
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = var.igw_name
  }
}

# Create Route Table
resource "aws_route_table" "rtable" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = var.rtable_name
  }
}

# Associate Subnet A with the Route Table
resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.subnet_a.id
  route_table_id = aws_route_table.rtable.id
}

# Associate Subnet B with the Route Table
resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.subnet_b.id
  route_table_id = aws_route_table.rtable.id
}

