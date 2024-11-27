

data "azurerm_storage_account" "datablocksa" {
  for_each = var.fileshare

  name                 = each.value.datasa
  resource_group_name  = each.value.resource_group_name
}