provider "aws" {
  profile= "Profile_1" #provide a profile name 
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