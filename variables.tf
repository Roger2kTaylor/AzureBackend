#####################################################################
# variables.tf 
#####################################################################

#####################################################################
# Variables Block 1
#####################################################################
variable "prefix" {
  type        = string
  default     = "app"
  description = "Prefix of the resource name"
}


variable "location" {
  description = "Azure Location"
  type        = string
}

#####################################################################
# Variables Block 2
#####################################################################

variable "environment" {
  description = "Environment Type - Prod/Stage/Dev"
  type        = string
}

variable "owner" {
  description = "Environment Owner"
  type        = string
}

variable "projectcode" {
  description = "Project Code"
  type        = string
}

variable "costcenter" {
  description = "Cost Center"
  type        = string
}

#####################################################################
# Variables Block 3
#####################################################################


variable "account_tier" {
  description = "Storage account tier"
  type        = string
}

variable "account_replication_type" {
  description = "Storage account replication type"
  type        = string
}

variable "account_kind" {
  description = "Storage account kind"
  type        = string
}

#####################################################################
# Variables Block 4
#####################################################################

variable "storage_container_name" {
  description = "Storage Container Name"
  type        = string
}

variable "storage_container_type" {
  description = "Storage Container Type"
  type        = string
}
