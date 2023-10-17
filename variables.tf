variable "aws_region" {
  description = "The AWS region where resources will be created"
  type        = string
  default     = "us-west-2"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr" {
  description = "The CIDR block for the subnet"
  type        = string
  default     = "10.0.0.0/24"
}

variable "ami_id" {
  description = "The ID of the Amazon Machine Image (AMI) to use for the EC2 instance"
  type        = string
  default     = "ami-07d07d65c47e5aa90"
}

variable "instance_type" {
  description = "The instance type for the EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "The name of the SSH key pair to use for the EC2 instance"
  type        = string
  default     = "your-key-pair-name"
}

variable "availability_zone" {
  description = "The availability zone where the subnet and instance will be created"
  type        = string
  default     = "us-west-2a"
}

variable "ssh_cidr_blocks" {
  description = "CIDR blocks allowed for SSH access (e.g., your IP or 0.0.0.0/0 for any IP)"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}
