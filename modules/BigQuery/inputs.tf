variable "datasets" {
  type = map(object({
    location = string
    friendly_name = string    
    delete_contents_on_destroy = bool
    description = string
  }))
}