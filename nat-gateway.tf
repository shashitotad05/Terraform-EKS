resource "aws_nat_gateway" "nat-gw1-test" {
    allocation_id = aws_eip.static-ip1-test.id

    subnet_id = aws_subnet.Public-1.id

    tags = {
      Name = "NAT-1"
    }
  
}
