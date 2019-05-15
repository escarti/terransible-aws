variable "aws_region" {}
variable "aws_profile" {}
data "aws_availability_zones" "available" {}
variable "vpc_cidr" {}

variable "cidrs" {
  type = "map"
}

variable "localip" {}
variable "domain_name" {}
variable "db_name" {}

variable "db_user" {}

variable "db_password" {}

variable "db_instance_class" {}
variable "dev_instance_type" {
  
}
variable "dev_ami" {
  
}
variable "key_name" {
  
}
variable "public_key_path" {
  
}
