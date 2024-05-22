variable name {
  type        = string
  default     = ""
  description = "please provide a name"
}

variable annotations {
  description = "Please provide annotations"
  type = map
  default = {}
}

variable labels {
  description = "Please provide labels"
  type = map
  default = {}
}