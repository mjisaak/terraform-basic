# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.57.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "=1.4.0"
    }

  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

