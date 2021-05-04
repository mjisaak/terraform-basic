resource "azurerm_resource_group" "webapp" {
  name     = "terraform-example-${var.stage}-rg"
  location = "West Europe"
  tags = {
    "Environment" = var.stage
    "Purpose"     = "Workshop"
  }
}

resource "azurerm_app_service_plan" "webapp_plan" {
  name                = "terraform-example-${var.stage}-webapp"
  location            = azurerm_resource_group.webapp.location
  resource_group_name = azurerm_resource_group.webapp.name

  sku {
    tier = "Standard"
    size = "S1"
  }
}

resource "azurerm_app_service" "example" {
  name                = "terraform-example-${var.stage}-webappservice"
  location            = azurerm_resource_group.webapp.location
  resource_group_name = azurerm_resource_group.webapp.name
  app_service_plan_id = azurerm_app_service_plan.webapp_plan.id

  site_config {
    dotnet_framework_version = "v4.0"
    scm_type                 = "LocalGit"
  }

  app_settings = {
    "SOME_KEY" = "some-value"
  }

  connection_string {
    name  = "Database"
    type  = "SQLServer"
    value = "Server=some-server.mydomain.com;Integrated Security=SSPI"
  }
}
