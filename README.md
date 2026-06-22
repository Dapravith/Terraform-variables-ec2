# Terraform EC2 Creation with Variables

This project creates an AWS EC2 instance using Terraform with reusable variables from `variables.tf` and values from `terraform.tfvars`.

## Project Structure

```text
.
├── provider.tf
├── variables.tf
├── terraform.tfvars
├── main.tf
├── output.tf
└── .gitignore
```

## Files

| File               | Description                                                   |
| ------------------ | ------------------------------------------------------------- |
| `provider.tf`      | Configures the AWS provider and region                        |
| `variables.tf`     | Declares input variables such as instance type and AWS region |
| `terraform.tfvars` | Provides values for the variables                             |
| `main.tf`          | Creates the EC2 instance                                      |
| `output.tf`        | Shows EC2 instance ID, public IP, private IP, and public DNS  |

## Example Variables

```hcl
variable "instance_type" {
  description = "EC2 Instance Type"
  type        = string
  default     = "t2.micro"
}

variable "aws_region" {
  description = "AWS Region"
  type        = string
}
```

## Example `terraform.tfvars`

```hcl
instance_type = "t3.micro"
aws_region    = "us-east-1"
```

## Terraform Commands

```bash
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
terraform output
terraform destroy
```

## Command Summary

| Command              | Purpose                                       |
| -------------------- | --------------------------------------------- |
| `terraform init`     | Initializes Terraform and downloads providers |
| `terraform fmt`      | Formats Terraform code                        |
| `terraform validate` | Checks Terraform configuration                |
| `terraform plan`     | Previews infrastructure changes               |
| `terraform apply`    | Creates the EC2 instance                      |
| `terraform output`   | Displays EC2 details                          |
| `terraform destroy`  | Deletes the created infrastructure            |

## Security Note

Do not hardcode AWS access keys or secret keys in Terraform files.

Use AWS CLI configuration instead:

```bash
aws configure
```

Terraform will use your local AWS credentials securely.

## Conclusion

This project demonstrates how to create an EC2 instance using Terraform variables. Using `variables.tf` and `terraform.tfvars` makes the configuration cleaner, reusable, and easier to maintain.
