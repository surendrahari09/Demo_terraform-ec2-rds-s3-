variable "ami" {  
type = string
}
variable "vpc_id" {}
variable "subnet_id" {}
variable "key_name" {}


variable "instance_type" {
  type = string
}



variable "bucket_name" {}

variable "acl_value" {
    default = "private"
}


variable "engine" {}
variable "engine_version" {}
variable "instance_class" {}
variable "db_name"  {}
variable "username" {}
variable "password" {}
variable "parameter_group_name" {}
variable "db_subnet_group_name" {}
variable "publicly_accessible" {}
variable "skip_final_snapshot" {}
