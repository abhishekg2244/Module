variable "rg" {
  type = map(object ({
    name= string
    location= string
    managed_by = optional(string)
    tag = optional (map(string))
     
  }))
  
}