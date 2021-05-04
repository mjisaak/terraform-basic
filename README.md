# Terraform Basics

## Setup Terraform (on Windows)

- [Download the CLI](https://www.terraform.io/downloads.html) and add the extracted path to the Environment variable
- _Optional_ Install the [VSCode Terraform Visual Studio Code Extension](https://marketplace.visualstudio.com/items?itemName=HashiCorp.terraform): `code --install-extension HashiCorp.terraform`

## Setup sample

- Create a main.tf (`ni main.tf`)
- Copy the content from the example [here](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs)
- Update the version in the main.tf to the latest version.
- Set the terraform version (e. g. `required_version = "0.15.1"`)
- Add a var.tf for the variables (`ni var.tf`)
- Initialize Terraform using `terraform init`
- Create a .gitignore and add `*/.terraform` to it.
- Test the deployment using `terraform plan`
- Deploy the ressources using `terraform apply`
- If using `*.tfvars`, use the following terraform command: `terraform plan -var-file="dev.tfvars"`
- If you want to write the plan to an output file (which can be used as an input for terraform plan), use `terraform plan -out="tfplan.out" -var-file="dev.tfvars""` and apply it using `terraform apply tfplan.out`
- Use `terraform validate` to validate your terraform project

## Resources

- [Terraform Azure Provider](https://registry.terraform.io/providers/hashicorp/azurerm/latest)
- [Terraform Azure AD Provider](https://registry.terraform.io/providers/hashicorp/azuread/latest)
- [Terraformer](https://github.com/GoogleCloudPlatform/terraformer) - A CLI tool that generates tf/json and tfstate files based on existing infrastructure (reverse Terraform). **\*USE WITH CAUTION**
