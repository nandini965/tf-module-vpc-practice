 resource "aws_vpc" "main" {
   cidr_block           = var.cidr_block
   enable_dns_hostnames = true
   enable_dns_support   = true
 }

 module subnets  {
   source = "./subnets"
   vpc_id = var.vpc_id
   cidr_block = var.cidr_block
 }
 resource "aws_vpc_peering_connection" "peer" {
   peer_vpc_id = aws_default_vpc_id
   vpc_id      = var.vpc_id
   auto_accept = true

 }

