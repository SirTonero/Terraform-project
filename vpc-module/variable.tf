#Environment Variable

variable "region" {}
variable "project_name" {}
variable "environment" {}

#VPC Variables
variable "vpc_name" {}
variable "vpc_cidr" {}

#Internet Gateway Variables

variable "igw_name" {}


#Public Subnet Variables
variable "public_az1" {}
variable "public_subnet_az1_cidr" {} #192.168.0.0/26
variable "public_subnet_az2_cidr" {} # 192.168.0.64/26

# Route table Name
variable "route_table" {}
