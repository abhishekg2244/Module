module "rg" {
    source = "../../Modules/azurerm_resource_group"
    rg = var.rg
  
}

module "sa" {
    depends_on = [ module.rg ]
    source = "../../Modules/azurern_storageaccount"
    sa = var.sa
  
}

module "sa_container" {
    depends_on = [ module.sa ]
    source = "../../Modules/azurerm_storagecontainer"
    storage_container = var.storage_container
}

module "sa_fileshare" {
   depends_on = [ module.sa ]
    source = "../../Modules/azurerm_storagefileshare"
    fileshare = var.fileshare
}

module "vnet" {
  depends_on = [module.rg] 
  source = "../../Modules/azurerm_virtualnetwork"
  vnet = var.vnet 
}

module "subnet" {
    depends_on = [ module.rg,module.vnet ]
    source = "../../Modules/azuerm_subnet"
    subnet = var.subnet
}