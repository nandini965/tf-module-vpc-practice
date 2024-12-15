resource "aws_subnet" "main" {
  count = length[cidr_block]
  vpc_id     = var.vpc_id
  cidr_block = var.cidr_block[count.index]
}