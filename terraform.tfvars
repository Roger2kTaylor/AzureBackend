#####################################################################
# terraform.tfvars
#####################################################################

#####################################################################
# Variables Block 1
#####################################################################

# General 
prefix   = "sg1"
location = "East Us"

# Common Tags
environment = "Dev"
owner       = "Roger Taylor"
projectcode = "0001"
costcenter  = "c0001"

# Storage Account 
account_tier             = "Standard"
account_replication_type = "LRS"
account_kind             = "StorageV2"

# Storage Account Container
storage_container_name = "tfstate"
storage_container_type = "private"


