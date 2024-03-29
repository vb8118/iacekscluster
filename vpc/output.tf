output "aws_vpc_id" {
  value = aws_vpc.main.id
}

output "aws_subnets_private" {
  value = aws_subnet.azp_private.cidr_block
}

output "aws_subnets_public" {
  value = aws_subnet.azp_public.cidr_block
}

