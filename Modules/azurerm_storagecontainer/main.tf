resource "azurerm_storage_container" "sacontainerblock" {
    for_each = var.storage_container
    name= each.value.name
    storage_account_id = data.azurerm_storage_account.datablocksa[each.key].id
    container_access_type = "private"
    
  
}
