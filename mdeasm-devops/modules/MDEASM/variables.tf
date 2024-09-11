variable "resource_group_location" {
  type = string
  default = "westeurope"
  description = "location of resource group"
}

variable "resource_group_name" {
  type = string
  default = "mdeasm"
  description = "resource group name"
}

variable "easm_workspace_name" {
  type = string
  default = "0xMDEASM"
  description = "name of easm workspace"
}