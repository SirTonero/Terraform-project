module "vpc-module" {
  source = "../vpc-module" # location to my module

  region                  = var.region
  project_name            = var.project_name
  environment = var.environment
  vpc_name                = var.vpc_name
  vpc_cidr                = var.vpc_cidr
  igw_name                = var.igw_name
  public_subnet_az1_cidr  = var.public_subnet_az1_cidr
  public_subnet_az2_cidr  = var.public_subnet_az2_cidr
  route_table_name        = var.route_table_name
  private_subnet_az1_cidr = var.private_subnet_az1_cidr
  private_subnet_az2_cidr = var.private_subnet_az2_cidr


}