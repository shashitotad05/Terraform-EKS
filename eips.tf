resource "aws_eip" "static-ip1-test" {

    depends_on = [
      aws_internet_gateway.test-internet-gateway    
    ]
  
}

resource "aws_eip" "static-ip2-test" {

    depends_on = [
      aws_internet_gateway.test-internet-gateway    
    ]
  
}

