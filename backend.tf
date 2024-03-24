resource "aws_vpc" "main" {
  cidr_block       = "10.55.55.0/24"
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}