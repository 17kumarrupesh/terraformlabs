provider "azurerm" {
  features {}
}

# Define the existing resource group
resource "azurerm_resource_group" "existingrg" {
  name     = var.resource_group_name
  location = var.location
}

# Define the storage account to be created in the existing resource group
resource "azurerm_storage_account" "example" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.existing.name
  location                 = azurerm_resource_group.existing.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  tags = var.tags
}

# Outputs
output "storage_account_id" {
  description = "The ID of the Storage Account"
  value       = azurerm_storage_account.example.id
}

output "storage_account_primary_endpoint" {
  description = "The primary endpoint for the Storage Account"
  value       = azurerm_storage_account.example.primary_blob_endpoint
}
