resource "aws_vpc" "test-vpc" {
    # The CIDR block for VPC
  cidr_block = "192.168.0.0/16"

  #Makes your instances shared on the host.
  instance_tenancy = "default"

  #Required for EKS. Enable/disabe DNS support in the VPC
  enable_dns_support = true

  #Required for EKS. Enable/disabe DNS hostname in the VPC
  enable_dns_hostnames = true

  #Enable/disable ClassicLink for the VPC
  enable_classiclink = false

  #Enable/disable ClassicLink DNS Support for the VPC
  enable_classiclink_dns_support = false

  #requests Amazon-Provided IPv6 CIDR block with a /56 prefix length
  assign_generated_ipv6_cidr_block = false
  
  #A map of tags to assign to the resourvce.connection {
    tags= {
        Name= "test-VPC"
    }
  }

output "vpc_id"{
    value = aws_vpc.test-vpc.id
    description = "VPC id."
    # Setting an output value as sensitive prevents Terraform from showing its value in plan and apply
    sensitive = false


}