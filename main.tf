provider "aws" {
  region = var.aws_region
}

# Create a VPC
resource "aws_vpc" "example_vpc" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = var.vpc_name
  }
}

# Create a subnet within the VPC
resource "aws_subnet" "example_subnet" {
  vpc_id                  = aws_vpc.example_vpc.id
  cidr_block              = var.subnet_cidr
  availability_zone       = var.availability_zone
  map_public_ip_on_launch = true
  tags = {
    Name = var.subnet_name
  }
}

# Create EC2 instances
resource "aws_instance" "example" {
  count         = var.num_instances
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_pair_name
  subnet_id     = aws_subnet.example_subnet.id
  tags = {
    Name = "${var.ec2_instance_name}-${count.index}"
  }
}
