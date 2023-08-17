#Environment Variable

variable "region" {
  default = "us-east-1"
}
variable "project_name" {
  default = "VPC-module"
}
variable "environment" {
  default = "Dev"
}

#VPC Variables
variable "vpc_name" {
  default = "terraform-VPC"
}
variable "vpc_cidr" {
  default = "192.168.0.0/24"
}

#Internet Gateway Variables
variable "igw_name" {
  default = "Terraform_Internet_gateway"
}


#Public Subnet Variables
variable "public_subnet_az1_cidr" {
  default = "192.168.0.0/26"
} # 192.168.0.0/26

variable "public_subnet_az2_cidr" {
  default = "192.168.0.64/26"
} # 192.168.0.64/26

# Route table Name
variable "route_table_name" {
  default = "terraform_route_table"
}

#private subnet Variables
variable "private_subnet_az1_cidr" {
  default = "192.168.0.128/26"
} # 192.168.0.128/26

variable "private_subnet_az2_cidr" {
  default = "192.168.0.192/26"
} # 192.168.0.192/26