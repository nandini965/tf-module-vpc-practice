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


