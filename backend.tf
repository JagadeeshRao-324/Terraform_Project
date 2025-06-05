terraform {
  backend "azurerm" {
    resource_group_name  = "demo-rg"
    storage_account_name = "terraformdemowithaks"
    container_name       = "prod-tfstate"
    key                  = "prod.terraform.tfstate"
  }
}