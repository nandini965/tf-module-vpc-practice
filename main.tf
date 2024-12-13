 resource "aws_vpc" "main" {
  cidr_block  = var.cidr_block
  tags = {
    Name = "main"
  }
}

 resource "aws_vpc_peering_connection" "peer" {
   peer_vpc_id   = var.default_vpc_id
   vpc_id        = aws_vpc.main.id
   auto_accept   = true
#
 }

