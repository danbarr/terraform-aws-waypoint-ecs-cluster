variable "waypoint_application" {
  type        = string
  description = "Name of the Waypoint application which will be used to build the cluster name."
  nullable    = false

  validation {
    condition     = length(var.waypoint_application) <= 247 && can(regex("[a-zA-Z0-9_-]+", var.waypoint_application))
    error_message = "The waypoint_application must be up to 247 letters, numbers, hyphens, and underscores."
  }
}

variable "region" {
  type        = string
  description = "The region where the resources are created."
}

variable "default_capacity_provider" {
  type        = string
  description = "Capacity provider to use by default. Valid values are FARGATE and FARGATE_SPOT."
  default     = "FARGATE"
  nullable    = false

  validation {
    condition     = can(regex("^(?:FARGATE|FARGATE_SPOT)$", var.default_capacity_provider))
    error_message = "Valid values for default_capacity_provider are FARGATE and FARGATE_SPOT."
  }
}

variable "container_insights" {
  type        = bool
  description = "Whether to enable CloudWatch Container Insights."
  default     = false
}