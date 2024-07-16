resource "aws_security_group" "mongodb-sg" {
  name = "${var.env}-mongodb-sg"
  vpc_id = aws_vpc.main.id

  ingress {
    from_port = 27017
    protocol = "tcp"
    to_port = 27017
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    protocol = "-1"
    to_port = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "${var.env}-mongodb-sg"
  }
}

resource "aws_security_group" "mongoexpress-sg" {
  name = "${var.env}-mongoexpress-sg"
  vpc_id = aws_vpc.main.id

  ingress {
    from_port = 8081
    protocol = "tcp"
    to_port = 8081
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    protocol = "-1"
    to_port = 0
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.env}-mongoexpress-sg"
  }
}

resource "aws_security_group" "bastion-sg" {
  name = "${var.env}-bastion-sg"
  vpc_id = aws_vpc.main.id
  
    ingress {
    from_port = 22
    protocol = "tcp"
    to_port = 22
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    protocol = "-1"
    to_port = 0
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.env}-bastion-sg"
  }
}

resource "aws_security_group" "webserver-sg" {
  name = "${var.env}-webserver-sg"
  vpc_id = aws_vpc.main.id

  ingress {
    from_port = 80  
    protocol = "tcp"
    to_port = 80
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 5000
    protocol = "tcp"
    to_port = 5000
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    protocol = "-1"
    to_port = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
}

