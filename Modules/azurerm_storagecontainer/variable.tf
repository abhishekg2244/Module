variable "storage_container" {
    type = map(object({
      name = string
      resource_group_name = string
      datasa = string
    }))
  
}