variable "mongodb_release_name" {
  description = "Helm release name for MongoDB"
  type        = string
}

variable "namespace" {
  description = "Kubernetes namespace for MongoDB"
  type        = string
}

variable "replica_count" {
  description = "Number of MongoDB replicas"
  type        = number
}

variable "root_password" {
  description = "Root password for MongoDB"
  type        = string
}

variable "username" {
  description = "MongoDB username"
  type        = string
}

variable "password" {
  description = "MongoDB password"
  type        = string
}

variable "database" {
  description = "Default database name"
  type        = string
}

variable "storage_size" {
  description = "Persistent volume size for MongoDB"
  type        = string
}
