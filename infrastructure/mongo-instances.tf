resource "aws_instance" "mongo-db" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name = var.key_name
  subnet_id = aws_subnet.private.id
  vpc_security_group_ids = [aws_security_group.mongodb-sg.id]

  tags = {
    Name = "${var.env}-mongo-db"
  }
}

resource "aws_instance" "mongo-express" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name = var.key_name
  subnet_id = aws_subnet.private.id
  vpc_security_group_ids = [aws_security_group.mongoexpress-sg.id]
 
  tags = {
    Name = "${var.env}-mongo-express"
  }
}
