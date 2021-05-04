resource "azurerm_resource_group" "webapp" {
  name     = "terraform-example-${var.stage}-rg"
  location = "West Europe"
  tags = {
    "Environment" = var.stage
    "Purpose"     = "Workshop"
  }
}
