#####################################################################
# storageacct.tf 
#####################################################################

#####################################################################
# Resource Block 1
#####################################################################
# "${var.prefix}${count.index + 1}-nic"
# Create remote State Storage Account
resource "azurerm_storage_account" "stgacct" {
  name                     = "${var.prefix}${random_id.random_id.hex}stgacct"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  account_kind             = var.account_kind

  # Common Tags
  tags = local.common_tags

  depends_on = [azurerm_resource_group.rg]
}

#####################################################################
# Resource Block 2
#####################################################################

# Create remote State Storage Account Containter
resource "azurerm_storage_container" "stgcontainer" {
  name                  = var.storage_container_name
  storage_account_name  = azurerm_storage_account.stgacct.name
  container_access_type = var.storage_container_type

  depends_on = [azurerm_storage_account.stgacct]
}


