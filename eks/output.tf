output "aws_vpc_id" {
  value = aws_vpc.main.id
  # Setting an output value as sensitive prevents Terraform from showing its value in plan and apply.
  sensitive = false
}

output "aws_subnets_private" {
  value = aws_subnet.azp_private.cidr_block
}

output "aws_subnets_public" {
  value = aws_subnet.azp_public.cidr_block
}

output "aws_subnet_azp_private_id"{
  value = aws_subnet.azp_private.id
}

output "aws_subnet_azp_public_id"{
  value = aws_subnet.azp_public.id
}

output "aws_subnet_azs_private_id"{
  value = aws_subnet.azs_private.id
}

output "aws_subnet_azs_public_id"{
  value = aws_subnet.azs_public.id
}