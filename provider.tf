provider "aws" {
    access_key = "access-key"
    secret_key = "secret-key"
    region = "ap-south-1"	
}
terraform {
  backend "s3" {
    bucket         = "mybucketforterra"
    key            = "ec2rdss3/terraform.tfstate"
    region         = "ap-south-1"

    dynamodb_table = "dynamodb-lock"
    encrypt        = true
  }
}
