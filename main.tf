provider "aws" {
  access_key                  = var.access_key
  secret_key                  = var.secret_key
  region                      = var.region
  skip_credentials_validation = true
  skip_requesting_account_id  = true
}

# VPC
resource "aws_vpc" "mon_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "VPC-Terraform"
  }
}

# Subnet
resource "aws_subnet" "mon_subnet" {
  vpc_id     = aws_vpc.mon_vpc.id
  cidr_block = "10.0.1.0/24"
  tags = {
    Name = "Subnet-Terraform"
  }
}

# EC2
resource "aws_instance" "ma_machine" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.mon_subnet.id
  tags = {
    Name = "EC2-Terraform"
  }
}