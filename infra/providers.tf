terraform {
  required_version = ">=1.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
  }
}

provider "azurerm" {
  features {}

  client_id       = "<+connector.name.clientId>"
  client_secret   = "<+secrets.getValue('Azure Sandbox')>"
  tenant_id       = "<+connector.name.tenantId>"
  subscription_id = "e3bf43a8-eb94-4b99-8be8-6e873d3ac0ee" # Explicit subscription ID
}