resource "aws_vpc" "fintech_vpc" {
  cidr_block = var.vpc_cidr
  enable_dns_support = true
  enable_dns_hostnames = true

  tags = {
    Name = "${var.name}-vpc"
  }
}

resource "aws_subnet" "fintech_subnet" {
  vpc_id = aws_vpc.fintech_vpc.id
  cidr_block = var.subnet_cidr
  availability_zone = var.availability_zone
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.name}-subnet"
  }
}

resource "aws_internet_gateway" "fintech_igw" {
  vpc_id = aws_vpc.fintech_vpc.id

  tags = {
    Name = "${var.name}-igw"
  }
}

resource "aws_route_table" "fintech_route_table" {
  vpc_id = aws_vpc.fintech_vpc.id

  tags = {
    Name = "${var.name}-route-table"
  }
}
resource "aws_route" "fintech_route" {
  route_table_id = aws_route_table.fintech_route_table.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.fintech_igw.id
}

resource "aws_route_table_association" "fintech_route_table_assoc" {
  subnet_id = aws_subnet.fintech_subnet.id
  route_table_id = aws_route_table.fintech_route_table.id
}