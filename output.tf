#####################################################################
# output.tf 
#####################################################################

#####################################################################
# Output Block 1
#####################################################################

# Resource Group Name
output "resourcegroupname" {
  value = azurerm_resource_group.rg.name
}

# Resource Group Location
output "resourcegrouplocation" {
  value = azurerm_resource_group.rg.location
}

#####################################################################
# Output Block 2
#####################################################################

# Storage Account Name
output "storageaccountname" {
  value = azurerm_storage_account.stgacct.name
}

# Storage Account Access Tier
output "storageaccountaccesstier" {
  value = azurerm_storage_account.stgacct.access_tier
}

# Storage Account Kind
output "storageaccountkind" {
  value = azurerm_storage_account.stgacct.account_kind
}

