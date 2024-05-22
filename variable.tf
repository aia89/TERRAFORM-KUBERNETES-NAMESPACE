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

variable pod_quota {
    type        = string
    default     = ""
    description = "Please specify pod quota"
  }

  variable pod_cpu_limit {
  description = "Please specify cpu limit"
  type = string
  default = ""
}

variable pod_memory_limit {
  type        = string
  default     = ""
  description = "Please specify memory limit"
}