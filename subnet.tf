resource "aws_subnet" "Public-1" {
  vpc_id = aws_vpc.test-vpc.id

  cidr_block = "192.168.0.0/18"

  availability_zone = "ap-south-1a"

  map_public_ip_on_launch = true

  tags = {
    Name= "Public-1-subnet-1a"
    "kubernetes.io/cluster/eks"="shared"
    "kubernetes.io/role/elb"=1
  }
}

resource "aws_subnet" "Private-1" {
  vpc_id = aws_vpc.test-vpc.id

  cidr_block = "192.168.128.0/18"

  availability_zone = "ap-south-1b"

  tags = {
    Name= "Private-1-subnet-1b"
    "kubernetes.io/cluster/eks"="shared"
    "kubernetes.io/role/elb"=1
  }
}
