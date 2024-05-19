variable "resource_group_name" {
  description = "The name of the resource group in which to create the storage account."
  type        = string
}

variable "location" {
  description = "The Azure location where the resource group and storage account should be created."
  type        = string
  default     = "East US"
}

variable "storage_account_name" {
  description = "The name of the storage account to create."
  type        = string
}

variable "account_tier" {
  description = "The performance tier of the storage account."
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "The replication type of the storage account."
  type        = string
  default     = "LRS"
}

variable "tags" {
  description = "A map of tags to assign to the resource."
  type        = map(string)
  default     = {}
}
