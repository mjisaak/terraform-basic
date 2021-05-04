resource "azurerm_resource_group" "webapp" {
  name     = "example.resource"
  location = "West Europe"
  tags = {
    "Environment" = "dev"
    "Purpose"     = "Workshop"
  }
}
