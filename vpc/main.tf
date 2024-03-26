resource "aws_vpc" "main" {
  cidr_block       = var.vpc_cidr_block
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}

resource "aws_subnet" "az2_public" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet_az2_public

  tags = {
    Name = "routable"
  }
}

resource "aws_subnet" "az2_private" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet_az2_private

  tags = {
    Name = "non-routable"
  }
}

resource "aws_subnet" "az1_public" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet_az1_public

  tags = {
    Name = "routable"
  }
}

resource "aws_subnet" "az1_private" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet_az1_private

  tags = {
    Name = "non-routable"
  }
}

