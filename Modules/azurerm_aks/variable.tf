variable "aks" {
    type = map(object({
      name = string
      resource_group_name = string
      location            = string
      nodepoolname        = string
      nodepoolnodecount   = number
      vm_size = string
    }))
  
}