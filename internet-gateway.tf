

resource "aws_internet_gateway" "demo-internet-gateway" {
vpc_id = aws_vpc.prod-JC.id
  

  tags = {
    Name = "demo-Internet-Gateway"
  }
}