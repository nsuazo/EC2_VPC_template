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

# Create a security group
resource "aws_security_group" "example_sg" {
  name        = var.security_group_name
  description = "Example security group"
  vpc_id      = aws_vpc.example_vpc.id

  # Define inbound rule for SSH
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.ssh_cidr_blocks
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

# Create an EC2 instance
resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_pair_name
  vpc_security_group_ids = [aws_security_group.example_sg.id]
  subnet_id     = aws_subnet.example_subnet.id
  tags = {
    Name = var.ec2_instance_name
  }
}
