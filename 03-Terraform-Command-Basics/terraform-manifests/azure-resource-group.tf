# Terraform Settings Block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.0" # Optional but recommended in production
    }    
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  subscription_id = "8a026ede-4c46-4018-9c70-53de20c37d19"
}

# Create Resource Group 
resource "azurerm_resource_group" "my_demo_rg1" {
  location = "westeurope"
  name = "my-demo-rg1"  
}
