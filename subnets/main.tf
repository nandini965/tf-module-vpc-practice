resource "aws_subnet" "main" {
  vpc_id     = var.vpc_id
  cidr_block = length(cidr_block)
}