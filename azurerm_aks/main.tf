resource "azurerm_kubernetes_cluster" "aksclusterblock" {
    for_each = var.aks
    name = each.value.name
    resource_group_name = each.value.resource_group_name
    location = each.value.location
    dns_prefix          = "exampleaks1"

    default_node_pool {
    name       = "default"
    node_count = 1
    vm_size = each.value.vm_size
  }

    identity {
    type = "SystemAssigned"
  }
  network_profile {
    network_plugin = "azure"
    network_policy = "calico"
  }
   
}


resource "azurerm_kubernetes_cluster_node_pool" "nodepoolblok" {
   for_each = var.aks
   name = each.value.nodepoolname
   kubernetes_cluster_id = azurerm_kubernetes_cluster.aksclusterblock[each.key].id
   node_count = each.value.nodepoolnodecount
   vm_size = each.value.vm_size
   mode                  = "User" 

}