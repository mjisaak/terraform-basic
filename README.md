# Terraform Basics

## Setup Terraform (on Windows)

- [Download the CLI](https://www.terraform.io/downloads.html) and add the extracted path to the Environment variable
- _Optional_ Install the [VSCode Terraform Visual Studio Code Extension](https://marketplace.visualstudio.com/items?itemName=HashiCorp.terraform): `code --install-extension HashiCorp.terraform`

## Setup sample

- Create a main.tf (`ni main.tf`)
- Copy the content from the example [here](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs)
- Update the version in the main.tf to the latest version.
- Set the terraform version (e. g. `required_version = "0.15.1"`)
- Initialize Terraform using `terraform init`
- Create a .gitignore and add `*/.terraform` to it.
- Test the deployment using `terraform plan`
- Deploy the ressources using `terraform apply`

## Resources

- [Terraform Azure Provider](https://registry.terraform.io/providers/hashicorp/azurerm/latest)
- [Terraform Azure AD Provider](https://registry.terraform.io/providers/hashicorp/azuread/latest)
