provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}

resource "azurerm_resource_group" "gosst" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_container_registry" "gosst" {
  name                = var.acr_name
  resource_group_name = azurerm_resource_group.gosst.name
  location            = azurerm_resource_group.gosst.location
  sku                 = var.acr_sku
  admin_enabled       = var.acr_admin_enabled
}