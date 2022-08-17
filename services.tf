resource "aws_vpc" "yjh-vpc" {
  cidr_block = var.VPC_cidr

    tags = {
    Name = "yjh-vpc"
    }
}

resource "aws_subnet" "yjh-public-subnet-1" {
  vpc_id     = aws_vpc.yjh-vpc.id
  cidr_block = var.subnet1_cidr
  availability_zone = var.AZ1

  tags = {
    Name = "yjh-public-subnet-1"
  }
}

resource "aws_subnet" "yjh-public-subnet-2" {
  vpc_id     = aws_vpc.yjh-vpc.id
  cidr_block = var.subnet2_cidr
  availability_zone = var.AZ2

  tags = {
    Name = "yjh-public-subnet-2"
  }
}

resource "aws_subnet" "yjh-private-subnet" {
  vpc_id     = aws_vpc.yjh-vpc.id
  cidr_block = var.subnet3_cidr

  tags = {
    Name = "yjh-private-subnet"
  }
}