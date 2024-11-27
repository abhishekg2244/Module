variable "fileshare" {
    type = map(object({
      name = string
      resource_group_name = string
      datasa = string
      quota = number
    }))
  
}