ami = "ami-0e6329e222e662a52"
instance_type = "t2.micro"
vpc_id = "vpc-0d2a35acfb8868b31"
subnet_id = "subnet-06de6c089b7d56a9b"
key_name = "new keypairnewlappy"




bucket_name = "noname_hari"
db_name = "noname_rds"



  engine               = "mysql"
  engine_version       = "8.0.27"
  instance_class       = "db.t2.micro"
  username             = "dbhari"
  password             = "^[a-zA-Z0-9]*$"
  parameter_group_name = "default.mysql5.7"
  db_subnet_group_name = "aws_noname"
  publicly_accessible    = true
  skip_final_snapshot    = true




