 resource "azurerm_resource_group" "cbis_rg" {
  for_each = var.resource_groups

  name     = each.value.name
  location = each.value.location
}

variable "resource_groups" {
  type = map(object({
    name     = string
    location = string
  }))
}