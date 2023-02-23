variable "buckets" {
  type = map(object({
    name = string
    storage_class = string
    location = string
  }))
  
}