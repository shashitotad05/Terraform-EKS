resource "aws_route_table" "public-route-table" {
  
  vpc_id = aws_vpc.test-vpc.id

  route  {
    cidr_block= "0.0.0.0/0"

    gateway_id= aws_internet_gateway.test-internet-gateway.id

  }

  tags={
    Name="test-public-route-table"
  }
}

resource "aws_route_table" "private1-route-table" {
  
  vpc_id = aws_vpc.test-vpc.id

  route  {
    cidr_block= "0.0.0.0/0"

    nat_gateway_id= aws_nat_gateway.nat-gw1-test.id


  }

  tags={
    Name="test-private1-route-table"
  }
}

