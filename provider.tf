provider "aws" {
    access_key = "AKIA5FIOCDDBUQG2PD5K"
    secret_key = "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"
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
