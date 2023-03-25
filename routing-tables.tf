resource "aws_route_table" "public-route-table" {
  
  vpc_id = aws_vpc.prod-JC.id

  route  {
    cidr_block= "0.0.0.0/0"

    gateway_id= aws_internet_gateway.demo-internet-gateway.id

  }

  tags={
    Name="demo-public-route-table"
  }
}

resource "aws_route_table" "private1-route-table" {
  
  vpc_id = aws_vpc.prod-JC.id

  route  {
    cidr_block= "0.0.0.0/0"

    nat_gateway_id= aws_nat_gateway.nat-gw1-demo.id


  }

  tags={
    Name="demo-private1-route-table"
  }
}

resource "aws_route_table" "private2-route-table" {
  
  vpc_id = aws_vpc.prod-JC.id

  route  {
    cidr_block= "0.0.0.0/0"

    nat_gateway_id= aws_nat_gateway.nat-gw2-demo.id


  }

  tags={
    Name="demo-private2-route-table"
  }
}