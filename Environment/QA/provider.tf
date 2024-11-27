terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.10.0"
    }
  }
}

provider "azurerm" {
  features {

  }
  subscription_id = "6d17caa8-fd3b-49c6-9c75-5ee81b1a9923"
}