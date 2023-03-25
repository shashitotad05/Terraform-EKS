resource "aws_eip" "static-ip1-demo" {

    depends_on = [
      aws_internet_gateway.demo-internet-gateway    
    ]
  
}

resource "aws_eip" "static-ip2-demo" {

    depends_on = [
      aws_internet_gateway.demo-internet-gateway    
    ]
  
}

