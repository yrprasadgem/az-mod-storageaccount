resource "azurerm_storage_account" "sa" {
  name                     = var.azurerm_storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.resource_group_location
  account_tier             = var.azurerm_storage_account_tier 
  account_replication_type = var.azurerm_storage_account_replication_type
  tags = var.azurerm_storage_account_common_tags
  allow_blob_public_access = var.allow_blob_public_access
}
resource "azurerm_storage_container" "cntrtfstate01" {
  name                  = var.azurerm_storage_container_name
  storage_account_name  = azurerm_storage_account.sa.name
  container_access_type = var.azurerm_storage_container_access_type
}