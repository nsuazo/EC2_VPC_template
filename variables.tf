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

variable "key_pair_name" {
  description = "The name of the AWS key pair to use for the EC2 instance"
  type        = string
  default     = "test-keypair"
}

variable "availability_zone" {
  description = "The availability zone for the EC2 instance"
  type        = string
  default     = "us-west-2a"
}

variable "ec2_instance_name" {
  description = "The name of the EC2 instance"
  type        = string
  default     = "example-instance"
}

variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
  default     = "example-vpc"
}

variable "subnet_name" {
  description = "The name of the subnet"
  type        = string
  default     = "example-subnet"
}

variable "num_instances" {
  description = "The number of EC2 instances to create"
  type        = number
  default     = 1
}
