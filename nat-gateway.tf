resource "aws_nat_gateway" "nat-gw1-demo" {
    allocation_id = aws_eip.static-ip1-demo.id

    subnet_id = aws_subnet.Public-1.id

    tags = {
      Name = "NAT-1"
    }
  
}

resource "aws_nat_gateway" "nat-gw2-demo" {
    allocation_id = aws_eip.static-ip2-demo.id

    subnet_id = aws_subnet.Public-2.id

    tags = {
      Name = "NAT-2"
    }
  
}