resource "aws_instance" "my-machine" {
  ami = var.ami
  instance_type = var.instance_type
  subnet_id     = " subnet-06de6c089b7d56a9b "
  tags = {
    Name = "my-ec2-machine"
  }
}


resource "aws_s3_bucket" "tfbucket" {

    bucket = "clouearl-tf-bucket"

    tags = {
        Name    = "cloudearl Bucket"
        Environment = "Cloudearl"

    }
}


resource "aws_db_instance" "default" {
# Allocating the storage for database instance.
  allocated_storage    = 10
# Declaring the database engine and engine_version
  engine               = var.engine
  engine_version       = var.engine_version
# Declaring the instance class
  instance_class       = var.instance_class
# User to connect the database instance
  username             = var.username
 password		= var.password
# Password to connect the database instance
  db_subnet_group_name = var.db_subnet_group_name
  skip_final_snapshot    = var.skip_final_snapshot
}
resource "aws_dynamodb_table" "state_locking" {
  hash_key = "LockID"
  name     = "dynamodb-lock"
  attribute {
    name = "LockID"
    type = "S"
  }
  billing_mode = "PAY_PER_REQUEST"
}
