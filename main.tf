 resource "aws_vpc" "main" {
  cidr_block  = var.cidr_block
  tags = {
    Name = "main"
  }
}

 resource "aws_vpc_peering_connection" "peering_connection" {
   peer_vpc_id   = var.vpc_id
   vpc_id        = aws_vpc.main.id
   auto_accept   = true

 }

