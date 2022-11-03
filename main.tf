resource "aws_instance" "my-machine" {
  ami = var.ami
  instance_type = var.instance_type
  subnet_id     = " subnet-06de6c089b7d56a9b "
   key_name = var.key_name
  tags = {
    Name = "my-Ec2-Instance"
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
  allocated_storage    = 10
  engine               = var.engine
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  username             = var.username
 password		= var.password
  db_subnet_group_name = var.db_subnet_group_name
  skip_final_snapshot    = var.skip_final_snapshot
}
