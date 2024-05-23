variable "resource_group_location" {
  description = "Location of the resource group."
  type        = string
}

variable "service_principal_id" {
  description = "Azure AD service principal ID."
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group to create."
  type        = string
}

variable "roles" {
  type        = list(string)
  description = "List of roles to assign to the service principal."
  default     = []
}

variable "tags" {
  default     = {}
  description = "Resource tags."
  type        = map(string)
}
