############ Resource group #############

variable "rg" {
  type = map(object ({
    name= string
    location= string
    managed_by = optional(string)
    tag = optional (map(string))
     
  }))
}

########## Storage Account ##############

variable "sa" {
    type = map(object({
      name = string
      location = string
      resource_group_name = string
      account_tier = string
      account_replication_type = string
      tag = optional(map(string))


    }))
  
}

######## storage Container #########

variable "storage_container" {
    type = map(object({
      name = string
      resource_group_name = string
      datasa = string
    }))
  
}

############ Storage File share #####
variable "fileshare" {
    type = map(object({
      name = string
      resource_group_name = string
      datasa = string
      quota = number
    }))
  
}


############## virtual network ######

variable "vnet" {
    type = map(object({
        name = string
        resource_group_name = string
        location= string
        address_space= list(string)
        tag = optional(map(string))
    }))
  
}

#############Subnet ############

variable "subnet" {
    type = map(object({
        name= string
        resource_group_name = string
        virtual_network_name = string
        address_prefixes = list(string)
    })) 
}