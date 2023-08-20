module "vpc-module" {
  source = "../vpc-module" # location to my module

  region                  = var.region
  project_name            = var.project_name
  environment             = var.environment
  vpc_name                = var.vpc_name
  vpc_cidr                = var.vpc_cidr
  igw_name                = var.igw_name
  public_subnet_az1_cidr  = var.public_subnet_az1_cidr
  public_subnet_az2_cidr  = var.public_subnet_az2_cidr
  route_table_name        = var.route_table_name
  private_subnet_az1_cidr = var.private_subnet_az1_cidr
  private_subnet_az2_cidr = var.private_subnet_az2_cidr


}

resource "aws_eip" "elastic_ip" {
  count      = length(module.vpc-module.public_subnets_id)
  domain     = "vpc"
  depends_on = [module.vpc-module.internet_gateway]
  tags = {
    Name = "Elastic-ip for az-${count.index}"
  }
}


resource "aws_nat_gateway" "private_nat_gateway" {
  count         = length(module.vpc-module.public_subnets_id)
  allocation_id = aws_eip.elastic_ip[count.index].id
  subnet_id     = module.vpc-module.public_subnets_id[count.index]
  tags = {
    Name = "nat-gateway for az-${count.index}"
  }
}

resource "aws_route_table" "private_route_table" {
  count  = length(module.vpc-module.private_subnets_id)
  vpc_id = module.vpc-module.vpc_id

  route {
    cidr_block = "0.0.0.0/0"


    nat_gateway_id = aws_nat_gateway.private_nat_gateway[count.index].id
  }
}

resource "aws_route_table_association" "private_route_table_association" {
  count          = length(module.vpc-module.private_subnets_id)
  subnet_id      = module.vpc-module.private_subnets_id[count.index]
  route_table_id = aws_route_table.private_route_table[count.index].id
}