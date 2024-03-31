# Resource: aws_route_table_association
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association

resource "aws_route_table_association" "azp_public" {
  # The subnet ID to create an association.
  subnet_id = aws_subnet.azp_public.id

  # The ID of the routing table to associate with.
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "azs_public" {
  # The subnet ID to create an association.
  subnet_id = aws_subnet.azs_public.id

  # The ID of the routing table to associate with.
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "azp_private" {
  # The subnet ID to create an association.
  subnet_id = aws_subnet.azp_private.id

  # The ID of the routing table to associate with.
  route_table_id = aws_route_table.azp_private.id
}

resource "aws_route_table_association" "azs_private" {
  # The subnet ID to create an association.
  subnet_id = aws_subnet.azs_private.id

  # The ID of the routing table to associate with.
  route_table_id = aws_route_table.azs_private.id
}