terraform {
  backend "http" {}
}

resource "azurerm_resource_group" "rg" {
    name = var.resource_group_name
    location = var.resource_group_location
}

resource "azurerm_template_deployment" "easm_deployment" {
    name = "mdeasm2"
    resource_group_name = azurerm_resource_group.rg.name
    deployment_mode = "Incremental"

    template_body = file("${path.module}/easm-deployment.json")

    parameters = {
      name = var.easm_workspace_name
      region = azurerm_resource_group.rg.location
    }

    depends_on = [azurerm_resource_group.rg]
}