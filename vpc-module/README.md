

# Terraform VPC Module

This Terraform module creates a Virtual Private Cloud (VPC) with public and private subnets in AWS. It also sets up an internet gateway and associates route tables for routing.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed on your machine.
- AWS account credentials configured.

## Usage

1. Clone this repository to your local machine:

   ```sh
   git clone https://github.com/SirTonero/Terraform-project
   ```

2. Change into the module directory:

   ```sh
   cd terraform-vpc-module
   ```

3. Create a `terraform.tfvars` file to provide input variables. For example:

   ```hcl
   region                  = "us-east-1"
   vpc_cidr                = "10.0.0.0/16"
   vpc_name                = "MyVPC"
   igw_name                = "MyInternetGateway"
   public_subnet_az1_cidr  = "10.0.1.0/24"
   public_subnet_az2_cidr  = "10.0.2.0/24"
   private_subnet_az1_cidr = "10.0.3.0/24"
   private_subnet_az2_cidr = "10.0.4.0/24"
   route_table_name        = "MyRouteTable"
   ```

4. Initialize the Terraform working directory:

   ```sh
   terraform init
   ```

5. Review the planned changes:

   ```sh
   terraform plan
   ```

6. Apply the changes:

   ```sh
   terraform apply
   ```

7. When you're done, you can destroy the resources:

   ```sh
   terraform destroy
   ```

## Inputs

- `region`: AWS region.
- `vpc_cidr`: The CIDR block for the VPC.
- ... (add other input variable descriptions)

## Outputs

- `vpc_id`: The ID of the created VPC.
- `public_subnets`: List of public subnet IDs.
- `private_subnets`: List of private subnet IDs.
- ... (add other output descriptions)

## Author

[Your Name]

## License

This project is licensed under the [MIT License](LICENSE).
```

Remember to replace `[Your Name]` with your name and update other placeholders as needed. Additionally, you can add more detailed explanations about each input variable and output in the "Inputs" and "Outputs" sections.