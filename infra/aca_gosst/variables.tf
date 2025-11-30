variable "subscription_id" {
  type      = string
  sensitive = true
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "registry_name" {
  type = string
}

variable "project_prefix" {
  type = string
}

variable "image" {
  type = string
}
