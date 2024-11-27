rg ={
    rg1 ={
        name = "test-rg"
        location = "East us"
        managed_by = "Terraform"
        tag ={
            env = "QA"
        }

    }
}

######### Storage Acccount #######

sa ={
    sa1 = {
        name= "qasa2024"
        resource_group_name = "test-rg"
        location = "east us"
        account_tier = "Standard"
        account_replication_type = "LRS"
        tag ={
            env = "QA"
        }
    }
}

###### Storage Container ######
storage_container = {
  container1 = {
    name = "container1"
    resource_group_name= "test-rg"
    datasa = "qasa2024"

  }
}

####### Stroage File share ##############

fileshare = {
  fileshare1 = {
    name= "qafileshare"
    resource_group_name= "test-rg"
    datasa = "qasa2024"
    quota= 100
    
  }
}

########### virtual network ########

vnet = {
    vnet1 = {
        name= "QA-vnet"
        resource_group_name= "test-rg"
        location= "east us"
        address_space = ["10.0.0.0/24"]
    }
}

#######subnet ############
subnet = {
  subnet1 = {
    name= "QA-frontendsubnet"
    resource_group_name= "test-rg"
    virtual_network_name= "QA-vnet"
    address_prefixes = ["10.0.0.0/26"]
    
  }
}

######### ACR #########
acr = {
  acr = {
    name =  "applicationregistry"
    resource_group_name = "test-rg"
    location = "east us"
    sku ="Standard"
  }
}
