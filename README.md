How to Build AWS VPC using Terraform – Step by Step

Step 1: Create a VPC
Step 2: Create Subnets
Step 3: Set up Internet Gateway
Step 4: Create a Route Table
Step 5: Associate Public Subnets with the Second Route Table

Creating a VPC module usually involves at least the following components:
•	VPC(s)
•	Subnet(s)
•	Internet Gateway(s)
•	Route Tables
•	NAT Gateway(s) – Optional
•	Security Group(s) – These can also be part of an EC2 module or a separate module
•	Network Access Control List(s) – Optional
•	Peering – Optional

This is the minimum structure of a module:
•	main.tf: Contains the core resource declarations and configurations for the module.
•	variables.tf: Defines input variables that allow users to customize the module’s behavior.
•	outputs.tf: Provides information about the created resources.
•	providers.tf: Defines the versions used for the providers and terraform
•	README.md: Documentation on how to use the module, including descriptions of input variables and outputs.

Step 6 : After this execute all these terraform files using the below commands one by one .

```sh
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply -ato-approve
```

Now if you want to delete all the resources created through terraform , then write this command.

```sh
terraform destroy
```

https://spacelift.io/blog/terraform-aws-vpc


To begin with, let us start by defining our VPC resource in Terraform. To specify a range of IP addresses in a VPC, a CIDR block needs to be provided. We have also provided a Name tag for identification.

