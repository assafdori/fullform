resource "aws_nat_gateway" "nat-gw" {
  allocation_id = aws_eip.nat-eip.id
  subnet_id     = aws_subnet.public.id

  tags = {
    Name = "${var.env}-nat-gw"
  }

}
