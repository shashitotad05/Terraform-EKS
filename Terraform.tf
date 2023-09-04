provider "aws" {
  profile= "Shashi-T"
  region = "ap-south-1"
}

terraform {
  required_providers {
    aws= {
      source = "hashicorp/aws"
      version = "~> 4.58.0"
    }
  }
}