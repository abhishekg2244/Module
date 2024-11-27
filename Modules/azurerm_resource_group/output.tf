output "azurerm_resource_group" {
    value = tomap({ for k, v in azurerm_resource_group.rgblock : k => v.name })
  
}