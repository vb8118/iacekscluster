output "aws_vpc_id" {
    value = aws_vpc.main.id
}

output "aws_subnets_private" {
  value = aws_subnet.private.cidr_block
}

output "aws_subnets_public" {
  value = aws_subnet.public.cidr_block
}