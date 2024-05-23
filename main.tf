resource "azurerm_resource_group" "this" {
  name     = var.resource_group_name
  location = var.resource_group_location
  tags     = var.tags
}

resource "azurerm_role_assignment" "this" {
  for_each             = toset(var.roles)
  scope                = azurerm_resource_group.this.id
  role_definition_name = each.key
  principal_id         = var.service_principal_id
}
