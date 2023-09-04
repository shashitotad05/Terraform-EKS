

resource "aws_internet_gateway" "test-internet-gateway" {
vpc_id = aws_vpc.test-vpc.id
  

  tags = {
    Name = "test-Internet-Gateway"
  }
}