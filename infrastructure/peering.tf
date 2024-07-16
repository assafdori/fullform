resource "aws_vpc_peering_connection" "main_to_secondary" {
  peer_vpc_id   = aws_vpc.main.id
  vpc_id        = aws_vpc.secondary.id
  auto_accept   = true
  
  accepter {
    allow_remote_vpc_dns_resolution = true
  }

  requester {
    allow_remote_vpc_dns_resolution = true
  }

  tags = {
    Name = "${var.env}-vpc-peering-connection-"
  }
}

