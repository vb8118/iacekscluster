resource "aws_vpc" "main" {
  cidr_block       = var.vpc_cidr_block
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}

resource "aws_subnet" "azs_public" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet_azs_public
  availability_zone = var.az_secondary

  tags = {
    Name = "routable-secondary"
  }
}

resource "aws_subnet" "azs_private" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet_azs_private
  availability_zone = var.az_secondary

  tags = {
    Name = "non-routable-secondary"
  }
}

resource "aws_subnet" "azp_public" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet_azp_public
  availability_zone = var.az_primary

  tags = {
    Name = "routable-primary"
  }
}

resource "aws_subnet" "azp_private" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet_azp_private
  availability_zone = var.az_primary

  tags = {
    Name = "non-routable-primary"
  }
}

