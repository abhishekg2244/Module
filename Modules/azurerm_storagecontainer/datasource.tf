# data "azurerm_storage_account" "datablocksa" {
#     for_each = var.stoage_container
#     name = each.value.datasa
#     resource_group_name = each.value.resource_group_name
  
# }

data "azurerm_storage_account" "datablocksa" {
  for_each = var.storage_container

  name                 = each.value.datasa
  resource_group_name  = each.value.resource_group_name
}