resource "azurerm_storage_share" "fileshareblock" {
    for_each = var.fileshare
    name = each.value.name
    storage_account_id = data.azurerm_storage_account.datablocksa[each.key].id
    quota = each.value.quota
}