resource "aws_subnet" "private" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_subnet_cidr_block
  availability_zone = "us-east-1a"

  tags = {
    Name = "${var.env}-private-subnet"
  }
}

resource "aws_subnet" "public" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_subnet_cidr_block
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.env}-public-subnet"
  }

}

resource "aws_subnet" "public-2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_subnet_cidr_block
  availability_zone = "us-east-1b"
  map_public_ip_on_launch = true
}

resource "aws_subnet" "bastion-subnet" {
  vpc_id            = aws_vpc.secondary.id
  cidr_block        = var.secondary_subnet_cidr_block
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true
}
