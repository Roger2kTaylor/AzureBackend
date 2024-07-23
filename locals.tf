#####################################################################
#local.tf 
#####################################################################

#####################################################################
# Local Block 1
#####################################################################

# Create common tags using locals resource
locals {
  common_tags = {
    Environment = var.environment
    Owner       = var.owner
    ProjectCode = var.projectcode
    CostCenter  = var.costcenter
  }
}

