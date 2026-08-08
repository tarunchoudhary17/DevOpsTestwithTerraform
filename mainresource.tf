terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.1.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "resources"
    storage_account_name = "dhondustoragetemp31"  # <- use module output
    container_name       = "vhds"
    key                  = "terraform.tfstate"
  }
}


provider "azurerm" {
   subscription_id = "c17b6032-f4e9-4d92-8344-97d2e50eb0b2"
   features {}
}

resource "azurerm_resource_group" "RG55" {
  name     = "resources1"
  location = "West Europe"
}