# Export the region
output "region" {
   value = var.region
}

# Export the Project_name
output "project_name" {
   value = var.project_name
}

# Export the environment
output "environment" {
   value = var.environment
}

# Export the vpc_id
output "vpc_id" {
   value = aws_vpc.vpc.id
}

# Export Internet_gateway_id
output "internet_gateway_id" {
   value = aws_internet_gateway.internet_gateway.id
}

# Export the public_subnet_az1_id
output "public_subnet_az1_id" {
   value = aws_subnet.public_subnet_az1.id
}

# Export the public_subnet_az2_id
output "public_subnet_az2_id" {
   value = aws_subnet.public_subnet_az2.id
}

# Export the private_subnet_az1_id
output "private_subnet_az1_id" {
   value = aws_subnet.private_subnet_az1.id
}

# Export the private_subnet_az2_id
output "private_subnet_az2_id" {
   value = aws_subnet.private_subnet_az2.id
}

# Export the first availability zone
output "availability_zone_1" {
   value = data.aws_availability_zones.aws_availability_zones.names[0]
}

# Export the second availability zone
output "availability_zone_2" {
   value = data.aws_availability_zones.aws_availability_zones.names[1]
}